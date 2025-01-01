# Clear
kill @e[team=Marker]

# Sound
playsound minecraft:block.note_block.pling voice @p[team=Playing] ~ ~ ~ 16 2

# Dialogue
schedule clear mc:states/5_drill_start/show/show_dialogue_loop

# Set Scores
scoreboard players add task AtomicDrill 1
scoreboard players set stage AtomicDrill 0