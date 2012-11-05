import dynaroach as dr
import numpy as np
import sys, time

from struct import pack, unpack

def doRun(motor_speed, outdir, robot):
  #robot.run_gyro_calib()
  #raw_input()
  #robot.get_gyro_calib_param()
  #time.sleep(0.5)
  #raw_input()
  
  
  #robot.reset()

  trial = dr.Trial()
  #trial.save_data = False
  
  #split motor speed up into 2 bytes.
  cmd_data = pack('<h', motor_speed*1000);
  cmd_data += pack('<h', motor_speed*1000);
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
  robot.save_trial_data('./'+ outdir + '/' + str(motor_speed) + '_mcu.csv')
  time.sleep(9)

def doSweep(motor_speed_min, motor_speed_max, time_run, outdir, robot):
  #robot.run_gyro_calib()
  #raw_input()
  #robot.get_gyro_calib_param()
  #time.sleep(0.5)
  #raw_input()
  
  
  #robot.reset()

  trial = dr.Trial()
  #trial.save_data = False
  motor_range = np.linspace(motor_speed_min, motor_speed_max, time_run/500.0)
  on_time = 0
  for motor_speed in motor_range:
    #split motor speed up into 2 bytes.
    cmd_data = pack('<h', motor_speed*1000);
    cmd_data += pack('<h', motor_speed*1000);
    motor_on = dr.StateTransition(on_time, dr.cmd.MOTOR_CONFIG, [ord(x) for x in cmd_data])
    on_time += 500.0
    print motor_speed
    trial.add_state_transition(motor_on)
  print len(motor_range)
  motor_off = dr.StateTransition(on_time, dr.cmd.MOTOR_CONFIG, [0, 0, 0, 0])
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
  time.sleep(10)
  robot.run_trial()
  time.sleep(on_time/1000.0+2)
  robot.transmit_saved_data()
  time.sleep(8)
  robot.save_trial_data('./'+ outdir + '/' + str(motor_speed) + '_mcu.csv')
  time.sleep(9)

def doHardwareSweep(motor_speed_min, motor_speed_max, time_run, outdir, robot):
  trial = dr.Trial()
  #trial.save_data = False
  
  #split motor speed up into 2 bytes.
  cmd_data = pack('<h', motor_speed_min*1000);
  cmd_data += pack('<h', motor_speed_max*1000);
  motor_sweep = dr.StateTransition(0, dr.cmd.TEST_MOTOR_SWEEP, [ord(x) for x in cmd_data])
  trial.add_state_transition(motor_sweep)

  motor_off = dr.StateTransition(time_run, dr.cmd.MOTOR_CONFIG, [0, 0, 0, 0])
  trial.add_state_transition(motor_off)
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
  robot.save_trial_data('./'+ outdir + '/' + str(motor_speed) + '_mcu.csv')
  time.sleep(9)

def main():
  robot = dr.DynaRoach(sys.argv[1])
  robot.configure_settings("0x0100")
  
  outdir = None
  if len(sys.argv) > 2:
    outdir = sys.argv[2]
  else:
    print("No outdir defined, argv[2]")
  doHardwareSweep(14, 30, 10000, outdir, robot)
  # motor_speeds = np.linspace(14, 30, 10)
  # for motor_speed in motor_speeds:
    # doRun(motor_speed, outdir, robot)

if __name__ == "__main__":
  main()
