vlog mux.v tb.v

vsim -novopt work.tb

view wave

add wave sim:/tb/Input0
add wave sim:/tb/Input1
add wave sim:/tb/Output
add wave sim:/tb/sel

run 500ns
