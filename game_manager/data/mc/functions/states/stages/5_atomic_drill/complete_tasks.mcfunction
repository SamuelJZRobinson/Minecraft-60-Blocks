# Progress Task
kill @e[team=Marker]
scoreboard players add task AtomicDrill 1
playsound minecraft:block.note_block.pling voice @p[team=Playing] ~ ~ ~ 16 2
schedule clear mc:states/stages/5_atomic_drill/dialogue_relay

# Refresh Scores
scoreboard players set stage AtomicDrill 0