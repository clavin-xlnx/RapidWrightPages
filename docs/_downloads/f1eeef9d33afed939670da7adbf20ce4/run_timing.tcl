# report to GUI
report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -routable_nets -name timing_all
report_timing -from {*/input0_north_reg*} -delay_type min_max -max_paths 10 -sort_by group -input_pins -name timing_North
report_timing -from {*/output0_north_reg*} -delay_type min_max -max_paths 10 -sort_by group -input_pins -name timing_North_after
report_timing -to {*/input0_north_reg*} -delay_type min_max -max_paths 10 -sort_by group -input_pins -name timing_North_before
report_timing -from {*/input0_south_reg*} -delay_type min_max -max_paths 10 -sort_by group -input_pins -name timing_South
report_timing -from {*/output0_south_reg*} -delay_type min -max_paths 10 -sort_by group -input_pins -name timing_South_after
report_timing -to {*/input0_south_reg*} -delay_type min_max -max_paths 10 -sort_by group -input_pins -name timing_South_before
