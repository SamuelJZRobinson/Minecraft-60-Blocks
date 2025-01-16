# Notes
  # Metro map updated by slow_loop_started

# Sync With Timer Engine
scoreboard players operation seconds TimerCountdown = seconds TimerCountdown

execute store result score itemsLeft ItemsExpedition run team list Item
title @a actionbar [{"score":{"name":"itemsLeft","objective":"ItemsExpedition"},"color":"red"},{"text":" items left","color":"white"}]

# Time Depleted
execute if score seconds TimerCountdown matches 0 run function mc:states/9_expedition/timer/timer_end
### execute if score seconds TimerCountdown matches 0 run function mc:timer/expedition/time_depleted