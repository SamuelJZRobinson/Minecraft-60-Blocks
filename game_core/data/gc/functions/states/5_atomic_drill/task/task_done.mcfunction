# Clear
kill @e[team=Marker]

# Sound
playsound minecraft:block.note_block.pling voice @p[team=Player] ~ ~ ~ 16 2

# Dialogue
schedule clear gc:states/5_atomic_drill/show/show_dialogue_loop

# Set Scores
scoreboard players add task AtomicDrill 1
scoreboard players set step AtomicDrill 0