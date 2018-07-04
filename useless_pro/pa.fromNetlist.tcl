
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name useless_pro -dir "D:/fpga_pro/Project Probe/useless_pro/planAhead_run_3" -part xc6slx45csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/fpga_pro/Project Probe/useless_pro/led_key_test.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/fpga_pro/Project Probe/useless_pro} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "led_key_test.ucf" [current_fileset -constrset]
add_files [list {led_key_test.ucf}] -fileset [get_property constrset [current_run]]
link_design
