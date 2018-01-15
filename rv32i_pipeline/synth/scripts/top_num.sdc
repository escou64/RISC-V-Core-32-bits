#Précise l'horloge du circuit
create_clock -name HCLK -period 10.0 -waveform {0.0 5.0} {i_clk}	
#Indique de ne pas modifier plus tard le net d'horloge
set_dont_touch_network HCLK						
#Génère le skew maximal attendu									
set_clock_uncertainty 0.5 [get_clocks HCLK]						

set_input_delay 1.0 -max -clock HCLK [remove_from_collection [all_inputs] [get_ports i_clk]]
set_output_delay 1.0 -max -clock HCLK [all_outputs]
