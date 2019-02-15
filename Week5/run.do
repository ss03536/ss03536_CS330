#Compiling design modules
vlog tb.v instruction.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/instruction
add wave sim:/tb/opcode
add wave sim:/tb/rd
add wave sim:/tb/funct3
add wave sim:/tb/rs1
add wave sim:/tb/rs2
add wave sim:/tb/funct7

run 800ns