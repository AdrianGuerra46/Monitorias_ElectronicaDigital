# Clock signal
set_property PACKAGE_PIN W5 [get_ports RBasys]							
	set_property IOSTANDARD LVCMOS33 [get_ports RBasys]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports RBasys]
	
# Switches
set_property PACKAGE_PIN V17 [get_ports {Down}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Down}]
set_property PACKAGE_PIN V16 [get_ports {Up}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Up}]

	
# LEDs
set_property PACKAGE_PIN U16 [get_ports {LED[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
set_property PACKAGE_PIN E19 [get_ports {LED[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property PACKAGE_PIN U19 [get_ports {LED[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
set_property PACKAGE_PIN V19 [get_ports {LED[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]