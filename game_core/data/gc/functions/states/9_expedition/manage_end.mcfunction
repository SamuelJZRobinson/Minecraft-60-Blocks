# Notes
  # Addresses in-person expeditinos only.

# Sound
function gc:sounds/expedition_end

# Hide Scores
scoreboard objectives setdisplay sidebar

# Kill Non-Player Entities
kill @e[type=item]
kill @e[team=Items]

# Add Character Head
execute if score characterSent MenuExpedition matches 1 run data modify storage minecraft:itemsprocess charactersGainedIds append value 21
execute if score characterSent MenuExpedition matches 2 run data modify storage minecraft:itemsprocess charactersGainedIds append value 19
execute if score characterSent MenuExpedition matches 3 run data modify storage minecraft:itemsprocess charactersGainedIds append value 20
execute if score characterSent MenuExpedition matches 4 run data modify storage minecraft:itemsprocess charactersGainedIds append value 22

# Analyse Player Damage and Harm Characters
# execute unless score task AtomicDrill matches 15..16 run 

# Player
  # Enable Natural Regeneration
  gamerule naturalRegeneration true
  # Effects
  effect give @p[team=Player] instant_health 1 20 true
  effect give @p[team=Player] minecraft:blindness 2 0 true
  # Append Inventory Items
  execute as @p[team=Player] run function gc:states/9_expedition/place/player/get/get_player_inventory

# Atomic Drill
execute if score doInPersonExpedition Settings matches 1 if score task AtomicDrill matches 15..16 run schedule function cm:menu/page3/event/event2_return 21t replace
execute unless score task AtomicDrill matches 15..16 run scoreboard players set expeditionDeath AtomicDrill 0

# Reset Scores
scoreboard players set characterSent MenuExpedition 0

# Set State
scoreboard players set gameState GameStatus 8
schedule function gc:states/manage_states 1t replace