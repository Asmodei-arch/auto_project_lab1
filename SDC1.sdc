create_clock -name C -period 20.000 [get_ports C]
derive_clock_uncertainty
set_false_path -from [get_ports R]
