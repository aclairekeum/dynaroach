import dynaroach as dr
import sys
import subprocess 
import time

d = dr.DynaRoach(sys.argv[1])
d.reset(False)

time.sleep(1)
d.radio.close()
cmd = "python2 ../../bootloader/imageproc/host/bootloader2.py "+\
    sys.argv[1]+" "+str(230400)+" ../../dynaroach/dist/default/production/dynaroach.production.hex"
cmd = cmd.split(" ")

d.radio.close()
time.sleep(3);
print cmd
subprocess.call(cmd);
