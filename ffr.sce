/* 
Frequency-Following Response Scenario

Two sounds are then played in an alternating fashion without changing anything visual.

Writen by Chris van Run (C.P.A.vanrun@uu.nl).

2014 - 03 - 04 	Created.

*/
pcl_file = "ffr.pcl"; 					# pcl file name geven
scenario = "FFR Pilot 2"; 						# for log-file

#Scenario configuration
write_codes = true; 								# send codes to the acquisition devices
pulse_width = 10;									# determines the length of time that the codes remain on the port
active_buttons = 1;								# 1 button active
button_codes = 69;								# Code that is send if the button (def: enter)is pressed.

# Stimulus properties for output:
stimulus_properties = Sound, string, Type, string;
event_code_delimiter = ";";

begin;

#--------- SDL ---------
picture {
	line_graphic {
		coordinates = -50, 0, 50, 0;
		coordinates = 0, -50, 0, 50;
		line_width = 3;
	} fixation_cross; x=0; y=0;on_top=true;
} default;