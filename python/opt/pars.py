
import numpy as np # modules may be imported

# constant params
a = .5
b = 1.
c = 10.

# cost function with named arguments -- note that c's value is defined above
def f(x=None,y=None,a=a,b=b):
  return (x-a)**2 + (c*(y-b)**4).sum()

# optimize-able params
x = -1.
y = [0.,0.] # variables can be 1d arrays

# opt info
opt = {'cost': f, 'cost_tol': 1e-1, 
       'vars': ['x','y'], 'vars_tol': 4e-1}

# scale,bounds on params to be optimized
x_s = 1.
x_m = -1.1
#x_M = np.inf # bounds default to +/- np.inf

y_m = -1.1
y_M = 1.1
#y_s = .1*(y_M - y_m) # scale will be inferred from bounds

