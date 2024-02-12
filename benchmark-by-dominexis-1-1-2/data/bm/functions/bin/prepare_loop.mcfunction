# Prepare world border

worldborder set 59998000 0
worldborder add 1000 1







# Run loop

function bm:bin/loop







# Increment tick count

scoreboard players add #tick bm.value 1







# Stop profile if 100 ticks have elapsed

execute if score #tick bm.value matches 100.. run function bm:bin/issue_profile