from matplotlib import pyplot
import sys
import numpy
import math
import glob


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


def reasonableData(data, line):
  if len(data) < 2:
    return True
  if math.isnan(line[2]):
    return False; 
  length = len(data)
  return data[length-1][TIME] < line[TIME]

def makeGraphsOf(filename):
  toPlot = [1, 2, 3, 4, 5, 6, 7, 10, 11]
  data = []
  f = open(filename)
  f.readline() #ignore the first data
  for line in f:
    temp = [float(x) for x in line.strip().split(',')]
    if reasonableData(data, temp):
      data.append(temp) 

  dataArray = numpy.array(data);
  dataArray[:, 0] = dataArray[:, 0]/(600) #FIXME estimate to go back to real time
  for plotType  in toPlot:
    pyplot.figure()
    pyplot.xlabel("Time (~ms)")
    pyplot.ylabel(names[plotType])
    pyplot.title(filename.split('/')[-1]+' '+ names[plotType])
    pyplot.plot(dataArray[:,0], dataArray[:,plotType])
    pyplot.savefig(filename+"_"+names[plotType]+".png");

def main():
  files = glob.glob(sys.argv[1]+"/*.csv")
  for filename in files:
    makeGraphsOf(filename)

if __name__ == "__main__":
  main()
