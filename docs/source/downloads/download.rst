:orphan:

========
Download
========

Here you can find the most recent binary and configuration files.


Soleon Payload Software
-----------------------
| Git UUID: 431f85bb342ffebf6d5c8c2dbe4806fb59f5743b
| Generation date: 2024_03_26
| Download:  :download:`aco-soleon.apj <./aco-soleon.apj>`.


.. note::

   | History:
   | 14/03: now with update of the servo ppm-signals...
   | 16/03: now with some bugfixes during test with copter; unused paramenter removed...
   | 16/03: support for offset and override switch has been added
   | 24/03: Offset trim handling improved; digital trim; ('up' --> inc 0.5%; 'down' --> dec 0.5%; limited to +-5%)
   | 25/03: Removed the manipulation of the Pump PPM signal from Offset trim.
   | 25/03: Send trim messages (zero/max trim) with MAX_SEVERITY_NOTICE to Groundstation.



Soleon Payload ParameterSets
----------------------------



Copter
------

Copter Software 


Copter Parametersets
--------------------  


LuaScripts
----------


MissionPlanner
--------------

Mission planner software and configuration for Soleon.

MissionPlanner Installation
~~~~~~~~~~~~~~~~~~~~~~~~~~~
todo

MissionPlanner Plugins
~~~~~~~~~~~~~~~~~~~~~~
todo


MissionPlanner parameter description
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This is parameter description file adding verbose parameter description for Soleon to the MissionPlanner.

| Download:  :download:`ParameterMetaDataBackup.xml <./ParameterMetaDataBackup.xml>`.

.. note::
   This file needs to be copied into MissionPlanner installation directory and overwrites the original file there.
