# Count Items
execute store result score tempItemCount AtomicDrill run clear @s saddle 0
scoreboard players operation itemCount AtomicDrill += tempItemCount AtomicDrill

# Set Score
scoreboard players set tempItemCount AtomicDrill 0