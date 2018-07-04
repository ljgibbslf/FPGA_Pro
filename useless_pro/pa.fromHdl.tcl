
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name useless_pro -dir "D:/fpga_pro/Project Probe/useless_pro/planAhead_run_4" -part xc6slx45csg324-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "led_key_test.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {led_key_test.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top led_key_test $srcset
add_files [list {led_key_test.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45csg324-2
