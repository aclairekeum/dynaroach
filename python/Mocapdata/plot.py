from matplotlib import pyplot as pt
import numpy as np
import numpy
import scipy.optimize
import sys
import functools

f = open(sys.argv[1])
print sys.argv[1]
temp_data = []
for k in f:
  temp_data.append([float(x) for x in k.split(',')])

data = np.array(temp_data);
data_x = np.convolve(data[:, 1], np.ones(50)/50.0, mode="valid")
data_y = np.convolve(data[:, 3], np.ones(50)/50.0, mode="valid")
data_prime_x = np.convolve(data_x, [-1,1], mode="same")
data_prime_y = np.convolve(data_y, [-1,1], mode="same")
data_double_prime_y = np.convolve(data_y, [-1, 2, -1], mode="same")
data_double_prime_x = np.convolve(data_x, [-1, 2, -1], mode="same")

pt.plot(data_x, data_y)
pt.figure()

def plot_curvature(data):
  """Plots the curvature via formula and second dir"""
  data_x = np.convolve(data[:, 1], np.ones(50)/50.0, mode="valid")
  data_y = np.convolve(data[:, 3], np.ones(50)/50.0, mode="valid")
  data_prime_x = np.convolve(data_x, [-1,1], mode="same")
  data_prime_y = np.convolve(data_y, [-1,1], mode="same")
  data_double_prime_y = np.convolve(data_y, [-1, 2, -1], mode="same")
  data_double_prime_x = np.convolve(data_x, [-1, 2, -1], mode="same")
  curvature = ((data_prime_x * data_double_prime_y - data_prime_y * data_double_prime_x) / (data_prime_x*data_prime_x + data_prime_y*data_prime_y) ** (3/2.0))
  blurred_curvature = np.convolve(curvature[2:-2], np.ones(10)/10.0, mode="valid")
  clipped = np.clip(blurred_curvature, -50, 50)
  pt.plot(clipped)
  #pt.axis([0, len(clipped), -20, 20])
  print curvature

def get_error(data, points):
  x = data[:, 0]
  y = data[:, 1]

  accum = []
  for p in points:
    r = (x-p[1])*(x-p[1]) + (y-p[3])*(y-p[3])
    accum.append(r)
  return np.std(accum)

def plot_optimize_circle(data):
  """Starting to use a sub optimization to match 
  the nearest n points to a circle to estimate curvature"""
  data_x = np.convolve(data[:, 1], np.ones(50)/50.0, mode="valid")
  data_y = np.convolve(data[:, 3], np.ones(50)/50.0, mode="valid")
  n = 9
  for j in range(len(data_x) - n):
    points = np.array([data_x[j:j+9], data_y[j:j+9]])
    print points
    print points[:, 2]
    scipy.optimize.fmin(functools.partial(get_error, points = points), numpy.array([1, 2]) )

plot_curvature(data)
pt.show()


