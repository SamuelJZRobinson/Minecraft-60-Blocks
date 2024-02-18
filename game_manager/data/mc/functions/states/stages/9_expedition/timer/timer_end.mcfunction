# Adjust Scores
### scoreboard players set clock Timer 3
scoreboard players set music GameStatus 3
scoreboard objectives setdisplay sidebar
scoreboard players set showEscape ItemsExpedition 0
tellraw @p[team=Playing] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

# Time Depleted
  # Clear Location Entities
  execute as @p[team=Playing] run function mc:timer/expedition/clear_location_entities
  # Enable Natural Regeneration
  gamerule naturalRegeneration true
  effect give @p[team=Playing] instant_health 1 20 true

# Analyse Player Damage and Harm Characters
execute unless score task AtomicDrill matches 15..16 run scoreboard players set characterSent ChestMenuExplore 0

# Append Inventory Items
execute if score doPovExpedition Settings matches 1 unless score expeditionDeath AtomicDrill matches 1.. run function mc:timer/expedition/get_player_inventory
scoreboard players set stage CheckItems 9
execute if score doPovExpedition Settings matches 1 unless score expeditionDeath AtomicDrill matches 1.. run function mc:utility/scavenge/check_item/check_main_add

# Effects
# effect give @p[team=Playing] minecraft:blindness 2 0 true

# Bunker Related
  # Teleport
  schedule function mc:utility/tp/tp_bunker 19t replace
  # Titles
  title @a times 10 20 10
  title @a title {"text":"Meanwhile","color":"gold"}
  title @a subtitle {"text":"In the bunker","color":"red"}
  # Update Items
  schedule function mc:states/stages/8_bunker/daily/update_bunker 20t replace

# Atomic Drill
execute if score doPovExpedition Settings matches 1 if score task AtomicDrill matches 15..16 run schedule function cm:menu/page3/events/event2_return 21t replace
execute unless score task AtomicDrill matches 15..16 run scoreboard players set expeditionDeath AtomicDrill 0

# Set State
scoreboard players set state GameStatus 8
schedule function mc:states/stages/manage_states 1t replace