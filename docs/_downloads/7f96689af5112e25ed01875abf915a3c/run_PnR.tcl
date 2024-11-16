# Add pblocks
create_pblock pblock_top
add_cells_to_pblock pblock_top [get_cells [list T_top]] -clear_locs
resize_pblock [get_pblocks pblock_top] -add {CLOCKREGION_X5Y5:CLOCKREGION_X5Y5}
create_pblock pblock_bot
add_cells_to_pblock pblock_bot [get_cells [list T_bot]] -clear_locs
resize_pblock [get_pblocks pblock_bot] -add {CLOCKREGION_X5Y4:CLOCKREGION_X5Y4} 
# Implement design and save
place_design
route_design
write_checkpoint -force routed_32.dcp
