=========
Debugging
=========
.. sectnum::


This to summarize the most important information how ardupilot debugging can be done.

It is recommended to use a dedicated folder for debugging as the debugger generates data that we would not like to have in the sorce code folder. 
In my case there is a folder 'ACoSoleon/debugging' for this purpose.



Ardupilot code debugging (SITL)
===============================
Start the Software in the Loop [SITL] simulation from folder 'ACoSoleon/debugging' with:

    nice ../../Tools/autotest/sim_vehicle.py -D -G --osd --console


Simple but often effective debugging method could be e.g. sending messages to the console.


.. note::
   | A more detailed introduction can be found from here. 
   | Ardupilot video **Part1**: https://www.youtube.com/watch?v=5nQiY_q_ZVA&t=586s



Ardupilot code debugging (GDB on SITL)
======================================
Start the Software in the Loop [SITL] simulation from folder 'ACoSoleon/debugging':

    | **nice ../../Tools/autotest/sim_vehicle.py -D -G --osd --console**
    | e.g: nice ../../Tools/autotest/sim_vehicle.py -D -G --osd --console -B system.cpp:16
    | e.g: nice ../../Tools/autotest/sim_vehicle.py -D -G --osd --console -B module.cpp:zeilen_nm
    
    - nice -> don't use to much resources 
    - -D -> debug 
    - -G -> attach gdb debugger 
    - -B -> sets a breakpoint


Simple but often effective debugging method could be e.g. sending messages to the console.


.. note::
   Ardupilot video **Part2**: https://www.youtube.com/watch?v=8fIndjwc_-Y



Ardupilot code debugging (GDB on HW)
======================================
The following steps are needed to setup your system to support debugging on the real HW.
Also in that case it's recommanded to debug from a dedicated folder [ACoSoleon/openocd].

Install OPENOCD:
----------------
Install OpenOCD into your python environment:

    sudo apt install openocd

.. note::
   | More detailed openocd info: 
   | https://openocd.sourceforge.io/doc/html/index.html


Install usbipd:
---------------
download and install e.g. usbipd-win_4.0.0.msi
Open Powershell as admin:
- usbipd list  -> list the connected usb devices
- usbipd bind --force -b 1-1    -> binds usb with BUSID 1-1
- usbipd attach  --wsl --busid 1-1   -> attches to wsl (wsl to be opend before)
- in wsl -> lsusb   lists the usb device (e.g. Bus 001 Device 002: ID 0483:3748 STMicroelectronics ST-LINK/V2)




Open OCD:
---------
cd ~/ardupilot/ACoSoleon/openocd$
openocd

-------

Build debug firmware and load to autopilot:
./waf configure --board CubeOrangePlus --debug --enable-asserts
./waf soleon -j8 --upload

---------

param set BRD_OPTIONS 9
(verify with: param show BRD_OPTIONS)


GBD debugger:
-------------
| cd ~/ardupilot/ACoSoleon/openocd
| arm-none-eabi-gdb -x gdb-openocd.init ../../build/CubeOrangePlus/bin/aco-soleon


r -> (re)start the CPU


.. note::
   Ardupilot video **Part3**: https://www.youtube.com/watch?v=FwFqqSDDr_E


SITL on Hardware!
=================

Ardupilot video **Part4**:  https://www.youtube.com/watch?v=81FKqNB6C38


GBD Commands in a nutshell
==========================

This the most important GBD commands.


TUI (TextUserInterface):
------------------------
| Ctrl+X a  --> show source code 
| Ctrl+X o  --> switch to other window



GDB commands:
-------------
| Ctrl+C --> Stop processor
| bt  --> back trace
| 
| up --> go up in the stack level
| down --> go down in the stack level


Commands:
---------
| break(b)
| continue(c)
| print(p)
| 
| e.g: b filename:line
| p --> print (variables;)  
|   e.g. p copter.
|   e.g. p AP_BattMonitor::_singleton

| display   --> shows global variable on every brackpoint
| undisplay 1  zum löschen

-----------

| step(s)  --> step into
| next(n)  --> step over

| delete(d)   --> delete all brakepoints

| i b        --> info brackpoints 
| info registers
| info threads
| info locals  --> shows local variables

----------------

| help clear --> help on clear command        

| Set var … --> to set a variable
|    e.g: set var var_name = 1

------------

| cond      --> cond brackpoint
|   e.g. cond 2 pct<=98    

| watch      --> watchpoint 
|  e.g. watch   AP_BattMonitor::_singleton->drivers[0]->_voltage_filt
|       watch   *$8     --> watchpoint on 'print Nr8' (print address before and refer to it)
      
----------

| info threads  --> lists the threads
| 
| thread 1    --> switch to thread 1
| bt          --> shows calling chain of thread 1

---------- 

| To start with predifened breakpoint – e.g:
| nice ../../Tools/autotest/sim_veicle.py -D -G --osd –console  -B AP_Battmonitor_Backend.cpp:70

-----------

.. note::
   | GBD commant reference: 
   | https://www.irya.unam.mx/computo/sites/manuales/fce12/debugger/cl/index.htm#commandref/gdb_mode/cmd_set_confirm.htm




