# Notes
  # Addresses in-person expeditinos only.

# Sound
function gc:sounds/expedition_end

# Hide Scores
scoreboard objectives setdisplay sidebar

# Kill Non-Player Entities
kill @e[type=item]
kill @e[team=Items]

# Append Character Head
  # Ted
  execute if score characterSent MenuExpedition matches 1 run data modify storage minecraft:itemsprocess charactersGainedIds append value 21
  # Dolores
  execute if score characterSent MenuExpedition matches 2 run data modify storage minecraft:itemsprocess charactersGainedIds append value 19
  # Mary
  execute if score characterSent MenuExpedition matches 3 run data modify storage minecraft:itemsprocess charactersGainedIds append value 20
  # Timmy
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
  data modify storage minecraft:itemsprocess scavengeGainedItemIds append from entity @s Inventory[].tag.itemId
  clear @s

# Reset Scores
scoreboard players set characterSent MenuExpedition 0

# Set State
scoreboard players set gameState GameStatus 8
schedule function gc:states/manage_states 1t replace