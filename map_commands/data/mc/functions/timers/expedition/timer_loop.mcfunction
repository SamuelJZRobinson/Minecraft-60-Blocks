# Notes
  # Metro map updated by slow_loop_started

# Sync With Timer Engine
scoreboard players operation seconds Expedition = seconds Timer

execute store result score itemsLeft ItemsExpedition run team list Item
title @a actionbar [{"score":{"name":"itemsLeft","objective":"ItemsExpedition"},"color":"red"},{"text":" items left","color":"white"}]
execute if score showEscape ItemsExpedition matches 0 if score itemsLeft ItemsExpedition matches 0 run tellraw @p[team=Playing] {"text":"Click to enter bunker","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function tf_raycast:return_to_bunker"}}
execute if score showEscape ItemsExpedition matches 0 if score itemsLeft ItemsExpedition matches 0 run scoreboard players set showEscape ItemsExpedition 1

# Time Depleted
execute if score seconds Timer matches 0 run function mc:timers/expedition/time_depleted