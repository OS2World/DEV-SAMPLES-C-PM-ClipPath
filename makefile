# make makefile
# 
# Tools used:
#  Compile::Resource Compiler
#  Compile::GNU C
#  Make: make
all : clippth.exe

clippth.exe : clippth.obj clippth.def
	gcc -Zomf clippth.obj clippth.def -o clippth.exe

clippth.obj : clippth.c 
	gcc -Wall -Zomf -c -O2 clippth.c -o clippth.obj


clean :
	rm -rf *exe *res *obj *lib