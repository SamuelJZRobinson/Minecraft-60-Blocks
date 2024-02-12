# Count Items
execute store result score tempItemCount AtomicDrill run clear @s saddle 0
scoreboard players operation itemCount AtomicDrill += tempItemCount AtomicDrill
# Reset Score
scoreboard players reset tempItemCount AtomicDrill