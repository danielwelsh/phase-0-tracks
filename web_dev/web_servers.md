#Key Design Philosphies of the Linux Operating System
The Linux operating system is a modular operating system. It uses a monolithic kernal arcitecture which handels process control, access to peripherals, networking, and the files systems. Drivers for other devices are either integrated with the kernal or added as modules when the system is running.

The system is then seperated into userland and kernal space. userland contains low-level system components such as graphics, daemons, windowing systems. The C standard library also exists in userland. Kernal space contains the linux kernal process scheduling, IPC subsystem, memory management and other layers that interact with the hardware exist.


#What is a VPS
A virtual private server is a machine that exists in a subsectioned part of a larger machine. These machines are great because it allows for greater utilization of large computers as it can be shared by many people at once. It also means that barriers to entry are reduced as you can buy a very small VPS that can be instantly set up to get your web app off the ground. 



#Why is it bad to run programs as the root user?
Applications are meant to be run on other users because it is one of the core security features of the Linux operating system. Therefore, you create users with restricted abilities within the operating system and then explicitly grant that user the capabilties as they are needed. 