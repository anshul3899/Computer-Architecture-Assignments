# Computer-Architecture-Assignments
This repository contains my solutions to ELL305 course at IIT Delhi

# Requirements
* SimpleRisc Processor
* LogiSim version 2.7 or higher.

# Usage
**For assignment 1:**
Run the following commands:
* To compile the interpreter:
```bash
gcc interpreter.c -o interpreter
```

* To run the emulator on your implementation:
```sh
./interpreter <path to assembly file>
```
 This will print the output on the terminal.
Example: 
```bash
./interpreter bubblesort.asm
```

**For assignment 2:**
Open PRESENT.circ and CIPHER.circ
We will follow the description below to provide inputs to our circuit: 
* The mem_img.txt will be used to load data into a RAM with a 32-bit data line
and a 3-bit address line.
* In the mem_img.txt file, the first address will be used to store the lowest
32 bits of the plaintext. Address 1 will contain the MSB bits (32:63) of
the plaintext. Address 2 will contain the lowest 32 bits (0:31) of the key.
Address 3 will contain the next 32 bits of the key. The lowest 16 bits of
Address 4 will contain the most significant 16 bits of the key. Fig.3 shows
the contents of the RAM.
* The output pins should be ordered such that the 32 LSB bits are printed
first, and the 32 MSB bits are printed next, when using the command line.
You also have to ensure that only the final output is printed and not the
intermediate results.
* Logisim can be run from the command line using:
```bash
java -jar logisim-XX <pathtocircuit>.circ
```
Logisim also provides a RAM module that can be used to load data from
the command line. The syntax for this is as follows:
```bash
java -jar logisim-XX <pathtocircuit>.circ -tty table -load mem_img.txt
```

**For assignment 3:**
* Open Processor.circ and right click on RAM and then select load contents.
* Load the encoded version of the program using:
```bash 
./encode <path to assembly file>
```
* Save the encoded version in a file and load it in RAM
* Output can be checked by poking the register or viewing contents in memory

# References
SimpleRisc: [Prof. Sarangi's](http://www.cse.iitd.ac.in/~srsarangi/archbooksoft.html) website
[Logisim docs](http://www.cburch.com/logisim/docs/2.7/en/html/guide/index.html)