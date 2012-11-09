from matplotlib import pyplot
import sys
import numpy
import math
import glob
import scipy.fftpack
import math
import pdb

#column titles
TIME = 0;
GYRO_X = 1
GYRO_Y = 2
GYRO_Z = 3
ACCEL_X = 4
ACCEL_Y = 5
ACCEL_Z = 6
BACK_EMF = 7
EMPTY_1 = 8
EMPTY_2 = 9
HALL = 9
BATTERY_V = 10
POWER = 14

#power generation constants
ADC_MAX = 1023.0
Kt = 0.00683
Ke = 0.15
OFFSET = 0.152
R_MOTOR = 4.2
COMP_GAIN = 0.8 # << IS this possible????
#CHECK 2 RESISTORS GAIN COULD BE 1
COMP_GAIN = 1.0
#COMP_GAIN = 0.9 # << IS this possible????

names = ["Time", "Gyro_x", "Gyro_y", "Gyro_z", "Accel_x",\
    "Accel_y", "Accel_z", "Back_emf", "Empty_1", "Empty_2", "Hall", "Battery_V"]

def smooth(x,window_len=11,window='hanning'):
    #from http://www.scipy.org/Cookbook/SignalSmooth
    """smooth the data using a window with requested size.
    
    This method is based on the convolution of a scaled window with the signal.
    The signal is prepared by introducing reflected copies of the signal 
    (with the window size) in both ends so that transient parts are minimized
    in the begining and end part of the output signal.
    
    input:
        x: the input signal 
        window_len: the dimension of the smoothing window; should be an odd integer
        window: the type of window from 'flat', 'hanning', 'hamming', 'bartlett', 'blackman'
            flat window will produce a moving average smoothing.

    output:
        the smoothed signal
        
    example:

    t=linspace(-2,2,0.1)
    x=sin(t)+randn(len(t))*0.1
    y=smooth(x)
    
    see also: 
    
    numpy.hanning, numpy.hamming, numpy.bartlett, numpy.blackman, numpy.convolve
    scipy.signal.lfilter
 
    TODO: the window parameter could be the window itself if an array instead of a string
    NOTE: length(output) != length(input), to correct this: return y[(window_len/2-1):-(window_len/2)] instead of just y.
    """

    if x.ndim != 1:
        raise ValueError, "smooth only accepts 1 dimension arrays."

    if x.size < window_len:
        raise ValueError, "Input vector needs to be bigger than window size."


    if window_len<3:
        return x


    if not window in ['flat', 'hanning', 'hamming', 'bartlett', 'blackman']:
        raise ValueError, "Window is on of 'flat', 'hanning', 'hamming', 'bartlett', 'blackman'"


    s=numpy.r_[x[window_len-1:0:-1],x,x[-1:-window_len:-1]]
    #print(len(s))
    if window == 'flat': #moving average
        w=numpy.ones(window_len,'d')
    else:
        w=eval('numpy.'+window+'(window_len)')

    y=numpy.convolve(w/w.sum(),s,mode='valid')
    return y

def reasonableData(data, line):
  if len(data) < 2:
    return True
  if math.isnan(line[2]):
    return False; 
  length = len(data)
  return data[length-1][TIME] < line[TIME]

def getPower(v_batt_raw, back_emf):
  #ref_emf = (d[0,1], ADC_MAX)[d[0,1] > ADC_MAX]
  #v_ref = ref_emf / ADC_MAX * v_batt
  v_batt = v_batt_raw / ADC_MAX * 2 * 3.3

  v_back_emf = ((back_emf) / ADC_MAX) * 3.3 / COMP_GAIN
  v_batt = 3.67
  #pdb.set_trace()
  i = (v_batt - v_back_emf) / R_MOTOR
  #i[i< 0] = 0
  omega = (v_back_emf / Ke) * 2 * math.pi
  power = Kt * i * omega
  #return v_batt
  #return v_batt - v_back_emf

  return power

def parseData(filename):
  data = []
  f = open(filename)
  f.readline() #ignore the first data
  for line in f:
    temp = [float(x) for x in line.strip().split(',')]
    temp.append(getPower(temp[BATTERY_V], temp[BACK_EMF]))
    if reasonableData(data, temp):
      data.append(temp)
    
  dataArray = numpy.array(data);
  dataArray[:, 0] = dataArray[:, 0]/(625)
  return dataArray

def hallFrequencyEstimation(filename):
  dataArray = parseData(filename)
  state = 0
  frequency = []
  lastSwitchTime = 0
  lastFreq = 0
  for data in dataArray:
    if data[HALL] == 0 and state == 1:
      lastFreq = 1000.0/(data[TIME]-lastSwitchTime);
      lastSwitchTime = data[TIME]
    frequency.append(lastFreq)
    state = data[HALL]
  return frequency


def makeGraphsOf(filename):
  toPlot = [1, 2, 3, 4, 5, 6, 7, 10, 11]
  dataArray = parseData(filename)

  for plotType  in toPlot:
    pyplot.figure()
    pyplot.xlabel("Time (~ms)")
    pyplot.ylabel(names[plotType])
    pyplot.title(filename.split('/')[-1]+' '+ names[plotType])
    #pyplot.plot(dataArray[:,0], dataArray[:,plotType])
    pyplot.plot(numpy.linspace(14,60,len(dataArray[:,0])), dataArray[:,plotType])
    pyplot.savefig(filename+"_"+names[plotType]+".png");

def getFft(filename, plotType):
  dataArray = parseData(filename)
  backemfData = dataArray[:, plotType]
  fft = scipy.fftpack.rfft(backemfData)
  fft = fft[1:-1]
  #pyplot.figure()
  pyplot.semilogx(fft, '-')

def graphMulti(filename, plotType, color, plot_format='.'):
  dataArray = parseData(filename)
  #pyplot.plot(dataArray[:, TIME], dataArray[:, plotType], plot_format, color=color, alpha=.5 )
  pyplot.plot(numpy.linspace(14,60,len(dataArray[:,0])), dataArray[:, plotType], plot_format, color=color, alpha=.5 )

def graphBlurred(filename, plotType, color):
  dataArray = parseData(filename) 
  smoothed = smooth(dataArray[:,plotType],window_len=60)
  pyplot.plot(numpy.linspace(14, 60, len(dataArray[:,0])), smoothed[0:len(dataArray[:,0])], '-', linewidth=2, color=color )
  #pyplot.plot(dataArray[:,0], smoothed[0:len(dataArray[:,0])], '-', linewidth=2, color=color )

def generateErrorSquared(filename, plotType, smooth_val, color, thickness=1):
  dataArray = parseData(filename) 
  smoothed = smooth(dataArray[:,plotType], window_len=60)
  data = []

  for i in range(len(dataArray[:, plotType])):
    data.append((dataArray[i, plotType] - smoothed[i] )**2)
  
  print "Squared error summed", sum(data)/float(len(data))
  smoothed = smooth(numpy.array(data), window_len=smooth_val)
  
  pyplot.plot(numpy.linspace(14,60, len(dataArray[:,0])), smoothed[0:len(dataArray[:, TIME])], '-', color=color, linewidth=thickness)
  #pyplot.plot(dataArray[:,0], smoothed[0:len(dataArray[:, TIME])], '-', color=color, linewidth=thickness)
  return data

def main():
  files = glob.glob(sys.argv[1]+"/*.csv")
  #files = files[1::2]
  
  #for filename in files:
  #  makeGraphsOf(filename)
  colors = [(.4, .4, .8), (.2, .8, .3), (.8, .8, .3),(.8, .3, .8)]
  colors2 = [(.2, .2, .6), (.0, .6, .1),(.6, .6, .1), (.6, .1, .6)]
  
  # colors = [(.8, .8,.6), (.8, .6, .8 )]
  # colors2= [(.5, .5, .2), (.5, .2, .5)]

  names = []
  for filename in files:
    names.append(filename.split('_')[0].split("/")[-1]);
  
  count = 0
  for filename in files:
    frequency = hallFrequencyEstimation(filename)
    pyplot.plot(frequency, '-', color=colors[count])
    count += 1
  pyplot.show()
  pyplot.legend(names*2)
  pyplot.title("Robot Comparison of Frequency")
  pyplot.xlabel("Motor Speed (%)")
  pyplot.ylabel("Frequency (Hertz)")
  exit(1)

  count = 0
  for filename in files:
    graphMulti(filename, POWER, colors[count])
    count +=1

  count = 0
  for filename in files:
    graphBlurred(filename, POWER, colors2[count])
    count +=1
  pyplot.legend(names*2)
  pyplot.title("Robot Comparison for Power")
  pyplot.xlabel("Motor Speed (%)")
  pyplot.ylabel("Power (W)")
  pyplot.figure()
  count = 0
  for filename in files:
    graphMulti(filename, BACK_EMF, colors[count])
    count += 1
  count = 0
  for filename in files:
    graphBlurred(filename, BACK_EMF, colors2[count])
    count +=1
  
  pyplot.title("Robot Comparison")
  pyplot.xlabel("Motor Speed (%)")
  pyplot.ylabel("BackEMF")
  pyplot.legend(names*2)
  
  pyplot.figure()
  count = 0
  for filename in files:
    generateErrorSquared(filename, BACK_EMF, 1, colors[count])
    count += 1
  pyplot.title("Robot Comparison")
  pyplot.xlabel("Motor Speed (%)")
  pyplot.ylabel("BackEMF")
  pyplot.legend(names*2)
  
  pyplot.figure()
  
  count = 0
  for filename in files:
    data = generateErrorSquared(filename, BACK_EMF, 200, colors2[count], 3)
    count += 1
  
  count = 0
  for filename in files:
    data = generateErrorSquared(filename, BACK_EMF, 50, colors2[count])
    count += 1
  pyplot.title("Robot Comparison")
  pyplot.xlabel("Motor Speed (%)")
  pyplot.ylabel("Squared Error in BackEMF")
  pyplot.legend(names*2)
  
  pyplot.show()

if __name__ == "__main__":
  main()
