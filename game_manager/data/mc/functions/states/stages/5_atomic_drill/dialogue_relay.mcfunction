# Notes
  # Since scheduling removes the identity of the player a separate execution is needed

# Show Dialogue
execute as @p[team=Playing] run function mc:states/stages/5_atomic_drill/dialogue_relay_show

# Loop
execute unless score dialogue AtomicDrill = dialogueMax AtomicDrill run schedule function mc:states/stages/5_atomic_drill/dialogue_relay 70t replace
execute unless score dialogue AtomicDrill = dialogueMax AtomicDrill run scoreboard players add dialogue AtomicDrill 1