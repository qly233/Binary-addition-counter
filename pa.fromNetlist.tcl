
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name erjinzhijiafajishuqi -dir "D:/szdl/erjinzhijiafajishuqi/planAhead_run_2" -part xc7a100tfgg484-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/szdl/erjinzhijiafajishuqi/erjinzhijiafajishuqi.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/szdl/erjinzhijiafajishuqi} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "erjinzhijiafajishuqi.ucf" [current_fileset -constrset]
add_files [list {erjinzhijiafajishuqi.ucf}] -fileset [get_property constrset [current_run]]
link_design
