## apt install build-essentials linux-header-{kernel_version}

KERNELVER ?= $(shell uname -r)

obj-m += gpio-f819xx.o

build: kernel_modules

kernel_modules:
	make -C /lib/modules/$(KERNELVER)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(KERNELVER)/build M=$(PWD) clean
