# Notes
  # Since scheduling removes the identity of the player a separate execution is needed

# Show Dialogue
execute as @p[Mobsteam=Player] run function mc:states/5_drill_start/show/show_dialogue

# Loop
execute unless score dialogue AtomicDrill = dialogueMax AtomicDrill run schedule function mc:states/5_drill_start/show/show_dialogue_loop 70t replace
execute unless score dialogue AtomicDrill = dialogueMax AtomicDrill run scoreboard players add dialogue AtomicDrill 1