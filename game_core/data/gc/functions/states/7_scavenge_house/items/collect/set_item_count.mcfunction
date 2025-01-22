# Count Items
execute store result score tempItemCount AtomicDrill run clear @s saddle 0
scoreboard players operation itemCount AtomicDrill += tempItemCount AtomicDrill

# Reset Scores
scoreboard players reset tempItemCount AtomicDrill 