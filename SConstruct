import os

xcCompiler = "/opt/microchip/xc16/v1.11/"
imageProc = "../imageproc-lib"

assemblerFlags = "-Wa,-g" #pulled from makefile
env = Environment(PIC = '33Fj128MC706A',
                  CC = 'xc16-gcc', 
                  AS = 'xc16-as',
                  PROGSUFFIX = '.elf', 
                  CFLAGS = '-g -omf=elf -mcpu=$PIC -D__MIKRO -D__BOOTLOAD '+assemblerFlags,
                  LINKFLAGS = "-omf=elf -mcpu=$PIC -Wl,--script=\"p33FJ128MC706A_Bootload.gld\",--heap=8192,--stack=16",
                  #include paths
                  CPPPATH=[xcCompiler+"/support/dsPIC33F/h/",
                    imageProc,
                    "src"]);
#Path to look for xc16 binaries. Can just use system path.

env.PrependENVPath('PATH',  os.environ['PATH'])

bin2hex = Builder(action = 'xc16-bin2hex $SOURCE -omf=elf',
                  suffix = 'hex', 
                  src_suffix = 'elf')
env.Append(BUILDERS = {'Hex' : bin2hex})
list = Builder(action = 'xc16-objdump -S -D $SOURCE > $TARGET', 
               suffix = 'lst', 
               src_suffix = 'elf')
env.Append(BUILDERS = {'List' : list})

imageProcLibFiles = Glob(imageProc+"/*.c")
imageProcLibFiles += Glob(imageProc+"/*.s")
dynaroachFiles = Glob("src/*.c")
staticLibs = [xcCompiler + "/lib/dsPIC33F/libp33FJ128MC706-elf.a", xcCompiler + "/lib/libq-elf.a"]

env.Program('dynaroach', imageProcLibFiles + dynaroachFiles + staticLibs)

env.Hex('dynaroach')
#env.List('dynaroach') #Current throws a bunch of errors
