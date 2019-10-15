SHELL           = /bin/bash 
PRG             = main
LOC				= ../libs
DISPO			= $(LOC)/lcdpcf8574.o $(LOC)/pcf8574.o $(LOC)/twimaster.o 
DISPS			= $(LOC)/lcdpcf8574.c $(LOC)/pcf8574.c $(LOC)/twimaster.c
NETO			= $(LOC)/spi.o $(LOC)/nrf24l01.o $(LOC)/wfunc.o
NETS			= $(LOC)/spi.c $(LOC)/nrf24l01.c $(LOC)/wfunc.c
OBJS            = $(PRG).o $(DISPO) $(NETO) 
SRCS            = $(PRG).cpp $(DISPS) $(NETS)
MCU_TARGET      = atmega328p
F_CPU           = 16000000UL
PRGMMR_TARGET   = m328p

#Options are 1, 2 (agressive), 3, s (small)
OPTIMIZE       = -O2

DEFS            =
LIBS            =
CC              = avr-gcc
SIZE 			= avr-size --format=avr --mcu=$(MCU_TARGET)
OBJCOPY         = avr-objcopy
OBJDUMP         = avr-objdump

# Override is only needed by avr-lib build system.
CFLAGS  = -g -Wall $(OPTIMIZE) -mmcu=$(MCU_TARGET) $(DEFS) -DF_CPU=$(F_CPU)
#Additional flags
CPPFLAGS = 
#override LDFLAGS = -Wl,-Map,$(PRG).map
LDFLAGS = -Map,$(PRG).map

all: $(PRG).hex

#test programmer
test: 
	avrdude -p $(PRGMMR_TARGET) -c usbasp -v	

#setup for usb programmer
program: $(PRG).hex
	avrdude -p $(PRGMMR_TARGET) -c usbasp -e -U flash:w:$(PRG).hex 

# debug disassembly files
disasm: $(PRG).elf
	$(OBJDUMP) -d $(PRG).elf

#prevent confusion with any file named "clean"
#the dash "-" prevents rm from erroring out with file not found
.PHONY	: clean
clean:
	-rm -rf	$(PRG).hex $(PRG).elf $(PRG).o $(LOC)/*.o
libs_clean:
	-rm -rf $(LOC)/*.o
#clean entire directory
all_clean:
	rm -rf *.o *.elf *.hex

# Get object files
# objects from c files
%.o : %.c 
	$(CC) $(CFLAGS) -c $< -o $@

# objects from c++ files
%.o : %.cpp 
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@

# elf file
$(PRG).elf: $(OBJS)
	$(CC) $(CFLAGS) -o $(PRG).elf $(OBJS)

# hex file
$(PRG).hex: $(PRG).elf
	rm -f $(PRG).hex
	$(OBJCOPY) -j .text -j .data -O ihex $(PRG).elf $(PRG).hex
	$(SIZE) $(PRG).elf
