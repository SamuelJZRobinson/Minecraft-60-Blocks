# Give Outfit
execute as @p[team=Playing] run function mc:utility/outfit/manage_house_outfit

# Remove Effects
effect clear @s slowness
effect clear @s blindness
effect give @s blindness 1 0 true

# Set Score
scoreboard players set fakeBlindness GameStatus 0