How to run the simulation:

1. Open the quadcoptermodel.slx file with simulink and run the simulation
    N.B.: By default the simulation runs on fuzzy-PID controller. 
	  To run the conventional-PID controller double click the "Controller" block 
	->then double click the "Attitude Controller" 
	->then double click the "PositionController" block 
	->then change the "SW1" and "SW2" switches to select conventional PID controller
	->then run the simulation again
2. To see the output plots open the plotSimulationOutput.m file in matlab and run it.