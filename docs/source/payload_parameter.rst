=====================
Parameter description
=====================

Soleon Payload Parameter description.

Parameter table
===============
.. _table_parameters:
.. table:: 
   :align: center

   +---------------------------+--------------+------------+------------+-------------------------------------------------+
   | Name                      | Default      | Range      | Unit       | Description                                     |
   +===========================+==============+============+============+=================================================+
   | :ref:`SO_CONTROLMODE`     | 1            | 0-3        |            | Soleon Control mode                             |
   +---------------------------+--------------+------------+------------+-------------------------------------------------+
   | :ref:`SO_SRV_SPRAYING`    | 1500         | 800-2200   | PWM        | PWM value if Spraying                           |
   +---------------------------+--------------+------------+------------+-------------------------------------------------+
   | :ref:`SO_SRV_NOSPRAY`     | 1500         | 800-2200   | PWM        | PWM value if not spraying                       |
   +---------------------------+--------------+------------+------------+-------------------------------------------------+
   | :ref:`SO_SPRAYRATE_EST`   | 1.5          | 0-10       | l/min      | Estimated Sprayrate                             |
   +---------------------------+--------------+------------+------------+-------------------------------------------------+
   | :ref:`SO_RCMAP_SPEED`     | 8            | 1-16       |            | Speed channel number                            |
   +---------------------------+--------------+------------+------------+-------------------------------------------------+
   | :ref:`SO_RCMAP_OFFSET`    | 9            | 1-16       |            | Offset channel number                           |
   +---------------------------+--------------+------------+------------+-------------------------------------------------+
   | :ref:`SO_RCMAP_OVRIDE`    | 10           | 1-16       |            | Overide channel number                          |
   +---------------------------+--------------+------------+------------+-------------------------------------------------+



Detailed paramenter description
===============================
More detailed description of the parameters.


----------------------

.. _SO_CONTROLMODE:

SO_CONTROLMODE
--------------
This to set the control mode of the Soleon Payload.
 0:disabled,1:ppm-adjust,2:test


----------------------

.. _SO_SRV_SPRAYING:

SO_SRV_SPRAYING
---------------
This is intended for ppm_mode blabla
PWM value in microseconds if spraying (SO_SPRAYERMODE == mission_ppm). Typically 1000 is lower limit, 1500 is neutral and 2000 is upper limit.

----------------------

.. _SO_SRV_NOSPRAY:

SO_SRV_NOSPRAY
--------------
This is ppm value if sprayer is switched off.
PWM value in microseconds if spraying (SO_SPRAYERMODE == mission_ppm). Typically 1000 is lower limit, 1500 is neutral and 2000 is upper limit.

----------------------

.. _SO_SPRAYRATE_EST:

SO_SPRAYRATE_EST
----------------
blabla blabla


----------------------

.. _SO_RCMAP_SPEED:

SO_RCMAP_SPEED
--------------
Speed channel number. This is speed signal used by the Soleon controller to adapt Sprayrate to copter speed.


----------------------

.. _SO_RCMAP_OFFSET:

SO_RCMAP_OFFSET
---------------
Offset channel number. This is offset signal from Groundstation used to modulate Sprayrats (+-5%; 0.5% steps)


----------------------

.. _SO_RCMAP_OVRIDE:

SO_RCMAP_OVRIDE
---------------
Controller override channel number. This is used to override mission planner controlled pump control (lower 1250: Sprayer off; 1250-1750: Missionplanner controlled; higher 1750: Sprayer ON).



