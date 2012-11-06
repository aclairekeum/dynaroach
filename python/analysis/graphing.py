from matplotlib import pyplot
import sys
import numpy
import math
import glob
import scipy.fftpack

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
HALL = 10
BATTERY_V = 11

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

def parseData(filename):
  data = []
  f = open(filename)
  f.readline() #ignore the first data
  for line in f:
    temp = [float(x) for x in line.strip().split(',')]
    if reasonableData(data, temp):
      data.append(temp)
  
  dataArray = numpy.array(data);
  dataArray[:, 0] = dataArray[:, 0]/(625)
  return dataArray

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
  colors = [(.4, .4, .8), (.2, .8, .3)]
  colors2 = [(.2, .2, .6), (.0, .6, .1)]
  
  # colors = [(.8, .8,.6), (.8, .6, .8 )]
  # colors2= [(.5, .5, .2), (.5, .2, .5)]
  
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
  pyplot.legend(["Luke's robot", "Aaron's Robot"]*2)
  
  pyplot.figure()
  count = 0
  for filename in files:
    generateErrorSquared(filename, BACK_EMF, 1, colors[count])
    count += 1
  pyplot.title("Robot Comparison")
  pyplot.xlabel("Motor Speed (%)")
  pyplot.ylabel("BackEMF")
  pyplot.legend(["Luke's robot", "Aaron's Robot"]*2)
  
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
  pyplot.legend(["Luke's robot 200 smooth", "Aaron's Robot 200 smooth",
    "Luke's robot 50 smooth", "Aaron's Robot 50 smooth"])
  
  count = 0
  #for filename in files:
  pyplot.figure()
  graphMulti(files[0], BACK_EMF, colors[0], '-')
  pyplot.title("Luke's Robot")
  pyplot.xlabel("Motor Speed (%)")
  pyplot.ylabel("BackEMF")
  pyplot.axis([10, 65, 880, 1000])
  
  pyplot.figure()
  graphMulti(files[1], BACK_EMF, colors[1], '-')
  pyplot.title("Aaron's Robot")
  pyplot.xlabel("Motor Speed (%)")
  pyplot.ylabel("BackEMF")
  pyplot.axis([10, 65, 880, 1000])
  pyplot.show()

if __name__ == "__main__":
  main()
