# Run test function

function bm:test







# Increment iteration count

scoreboard players add #iterations bm.value 1







# Execute recursive function

execute store result score #world_border_diameter bm.value run worldborder get
execute if score #world_border_diameter bm.value matches ..59998039 run function bm:bin/loop