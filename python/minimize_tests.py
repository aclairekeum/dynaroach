import opt
import analyze

import numpy as np
import dynaroach as dr
import sys
import struct
from struct import pack, unpack
import time


def doRun(motor_speeds, outdir, robot):
  #robot.run_gyro_calib()
  #raw_input()
  #robot.get_gyro_calib_param()
  #time.sleep(0.5)
  #raw_input()
  
  
  #robot.reset()

  trial = dr.Trial()
  #trial.save_data = False

  #split motor speed up into 2 bytes.
  cmd_data = pack('<h', motor_speeds[0]*100);
  cmd_data += pack('<h', motor_speeds[1]*100);
  motor_on = dr.StateTransition(0, dr.cmd.MOTOR_CONFIG, [ord(x) for x in cmd_data])
  trial.add_state_transition(motor_on)

  motor_off = dr.StateTransition(4000, dr.cmd.MOTOR_CONFIG, [0, 0, 0, 0])
  trial.add_state_transition(motor_off)
  #
  ds = dr.datestring()
  #trial.save_to_file('./' + outdir + '/' + ds + '_cfg', \
  #    gyro_offsets=robot.gyro_offsets, rid=eval(open('rid.py').read()))

  robot.erase_mem_sector(0x200)
  time.sleep(1)
  robot.erase_mem_sector(0x300)
  time.sleep(1)
  
  print "Configure trial"
  robot.configure_trial(trial)
  time.sleep(0.5)
  robot.run_trial()
  time.sleep(6)
  robot.transmit_saved_data()
  time.sleep(8)
  filepath = './'+ outdir + '/' + str(motor_speeds[0])+'_'+str(motor_speeds[1]) + '_mcu.csv';
  robot.save_trial_data(filepath)
  time.sleep(9)
  return filepath;

def get_fitness(filename):
	dataArray = analyze.parseData(filename) 
	plotType = analyze.BACK_EMF
	smoothed = analyze.smooth(dataArray[:,plotType], window_len=60)
	data = []

	for i in range(len(dataArray[:, plotType])):
		data.append((dataArray[i, plotType] - smoothed[i] )**2)
	print "Squared error summed", sum(data)/float(len(data))
	#smoothed = smooth(numpy.array(data), window_len=smooth_val)
	#pyplot.plot(numpy.linspace(14,60, len(dataArray[:,0])), smoothed[0:len(dataArray[:, analyze.TIME])], '-', color=(0,1,1), linewidth=1)

	#pyplot.plot(dataArray[:,0], smoothed[0:len(dataArray[:, TIME])], '-', color=color, linewidth=thickness)
	return sum(data)

def f(fallingEdge=None, risingEdge=None):
	global robot
	print "Running with : ", fallingEdge, risingEdge
	filepath = doRun([fallingEdge, risingEdge], 'backupData', robot)
	val = get_fitness(filepath)
	print {"fallingEdge":fallingEdge, "risingEdge":risingEdge, "fitness":val}

	return val

def initNelder():
	options = {'cost': f, 'cost_tol': 1e-3,
       'vars': ['fallingEdge','risingEdge'], 'vars_tol': 4e-3}
	p = {
		"fallingEdge_s":10,
		"fallingEdge_m":20,
		"fallingEdge_M":50,
		"risingEdge_s":10,
		"risingEdge_m":20,
		"risingEdge_M":50,
		#"y_m":-1.1,
		#"y_M":1.1,
		"fallingEdge": 24,
		"risingEdge": 24,
		"opt": options
	}
	nm = opt.NM("out.txt", p=p)
	nm.di = "."
	nm.pars(cost=f, vars=['x','y'], opt=options)
	nm.init()
	return nm

def main():
	global robot
	robot = dr.DynaRoach(sys.argv[1])
	robot.configure_settings("0x0100")

	nm = initNelder();

	while nm.step() and nm.k <= 100:
		print nm
	#nm.save()
	print np.asarray(nm.X[-(nm.n+1)])
	print np.asarray(nm.F[-(nm.n+1)])


if __name__=="__main__":
	main()