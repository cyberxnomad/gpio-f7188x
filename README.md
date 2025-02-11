## Linux GPIO Driver for Fintek  

The mainline linux does not support the Fintek F819xx chips yes. This repo adds support for Fintek F819xx.

> [!WARNING]
> Not yet tested on Fintek F81804.

Reference: 

[[1/1] GPIO support for Fintek family F819XX](http://patchwork.ozlabs.org/project/linux-gpio/patch/20240321170015.74544-2-linux@destefani.eng.br/)

> Both F81804 (64 pins, 30 gpios) and chips F81962/F81964/F81966/F81967  
> (128 pins, 80 gpios) share the same chip ID, but use a different gpio  
> mapping. Read the second serial device enable register and test for 0xff  
> was the recommended method suggested by the chip manufacturer to tell  
> apart both chips.
