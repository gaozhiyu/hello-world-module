obj-m:=hello_world.o
all:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(shell pwd) modules
clear:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(shell pwd) clean
