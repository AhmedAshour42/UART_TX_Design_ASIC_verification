###################################################################

# Created by write_sdc on Wed Aug 28 08:58:53 2024

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports clk]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports rst]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports Data_valid]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_data[7]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_data[6]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_data[5]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_data[4]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_data[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_data[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_data[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {P_data[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports Par_type]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports Par_en]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports SI]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports SE]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports test_mode]
set_load -pin_load 0.1 [get_ports Busy]
set_load -pin_load 0.1 [get_ports TX_out]
set_load -pin_load 0.1 [get_ports SO]
create_clock [get_ports clk]  -name MASTER_CLK  -period 100  -waveform {0 50}
set_clock_latency 0  [get_clocks MASTER_CLK]
set_clock_uncertainty -setup 0.025  [get_clocks MASTER_CLK]
set_clock_uncertainty -hold 0.01  [get_clocks MASTER_CLK]
set_clock_transition -min -fall 0.1 [get_clocks MASTER_CLK]
set_clock_transition -max -fall 0.1 [get_clocks MASTER_CLK]
set_clock_transition -min -rise 0.1 [get_clocks MASTER_CLK]
set_clock_transition -max -rise 0.1 [get_clocks MASTER_CLK]
create_clock [get_ports scan_clk]  -name MASTER_CLK_DFT  -period 100  -waveform {0 50}
set_clock_latency 0  [get_clocks MASTER_CLK_DFT]
set_clock_uncertainty -setup 0.025  [get_clocks MASTER_CLK_DFT]
set_clock_uncertainty -hold 0.01  [get_clocks MASTER_CLK_DFT]
set_clock_transition -min -fall 0.1 [get_clocks MASTER_CLK_DFT]
set_clock_transition -max -fall 0.1 [get_clocks MASTER_CLK_DFT]
set_clock_transition -min -rise 0.1 [get_clocks MASTER_CLK_DFT]
set_clock_transition -max -rise 0.1 [get_clocks MASTER_CLK_DFT]
group_path -name INOUT  -from [list [get_ports clk] [get_ports rst] [get_ports Data_valid] [get_ports {P_data[7]}] [get_ports {P_data[6]}] [get_ports {P_data[5]}] [get_ports {P_data[4]}] [get_ports {P_data[3]}] [get_ports {P_data[2]}] [get_ports {P_data[1]}] [get_ports {P_data[0]}] [get_ports Par_type] [get_ports Par_en] [get_ports SI] [get_ports SE] [get_ports scan_clk] [get_ports scan_rst] [get_ports test_mode]]  -to [list [get_ports Busy] [get_ports TX_out] [get_ports SO]]
group_path -name INREG  -from [list [get_ports clk] [get_ports rst] [get_ports Data_valid] [get_ports {P_data[7]}] [get_ports {P_data[6]}] [get_ports {P_data[5]}] [get_ports {P_data[4]}] [get_ports {P_data[3]}] [get_ports {P_data[2]}] [get_ports {P_data[1]}] [get_ports {P_data[0]}] [get_ports Par_type] [get_ports Par_en] [get_ports SI] [get_ports SE] [get_ports scan_clk] [get_ports scan_rst] [get_ports test_mode]]
group_path -name REGOUT  -to [list [get_ports Busy] [get_ports TX_out] [get_ports SO]]
set_input_delay -clock MASTER_CLK  30  [get_ports Data_valid]
set_input_delay -clock MASTER_CLK  30  [get_ports {P_data[7]}]
set_input_delay -clock MASTER_CLK  30  [get_ports {P_data[6]}]
set_input_delay -clock MASTER_CLK  30  [get_ports {P_data[5]}]
set_input_delay -clock MASTER_CLK  30  [get_ports {P_data[4]}]
set_input_delay -clock MASTER_CLK  30  [get_ports {P_data[3]}]
set_input_delay -clock MASTER_CLK  30  [get_ports {P_data[2]}]
set_input_delay -clock MASTER_CLK  30  [get_ports {P_data[1]}]
set_input_delay -clock MASTER_CLK  30  [get_ports {P_data[0]}]
set_input_delay -clock MASTER_CLK  30  [get_ports Par_type]
set_input_delay -clock MASTER_CLK  30  [get_ports Par_en]
set_input_delay -clock MASTER_CLK_DFT  30  [get_ports SI]
set_input_delay -clock MASTER_CLK_DFT  30  [get_ports SE]
set_input_delay -clock MASTER_CLK_DFT  30  [get_ports test_mode]
set_output_delay -clock MASTER_CLK  30  [get_ports Busy]
set_output_delay -clock MASTER_CLK  30  [get_ports TX_out]
set_output_delay -clock MASTER_CLK_DFT  30  [get_ports SO]