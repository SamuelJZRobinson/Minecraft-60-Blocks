# Notes
  # clock and music are set earlier during start_expedition to avoid clearing expedition items

# Adjust Scores
scoreboard players set alertInterval Timer 10
scoreboard players set seconds Timer 180
scoreboard objectives setdisplay sidebar Expedition
# Kill Empty Item Armor Stands
scoreboard players set lockInventory GameStatus 3
# Disable Natural Regeneration
gamerule naturalRegeneration false
# Effects
scoreboard players set blindness GameStatus 3
execute as @p[team=Playing] run function mc:timers/engine/player_effects
# Enable Item Damage
execute as @e[team=Item] run data modify entity @s Invulnerable set value 0b
# Titles
title @a times 10 20 10
title @a title {"text":"Meanwhile","color":"gold"}
title @a subtitle {"text":"Outside","color":"red"}
# Activate Timer Engine
function mc:timers/engine/timer_loop