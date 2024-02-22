# Notes
  # This state is only for POV expeditions???

# Set Scores
scoreboard players set lockInventory GameStatus 3
scoreboard players set fakeBlindness GameStatus 2

# Gamerules
gamerule naturalRegeneration false

# Enable Item Damage
execute as @e[team=Item] run data modify entity @s Invulnerable set value 0b

# Effects
execute as @p[team=Playing] run function mc:states/stages/9_expedition/place/player/effects/manage_effects

# Titles
title @a times 10 20 10
title @a title {"text":"Meanwhile","color":"gold"}
title @a subtitle {"text":"Outside","color":"red"}




# Set Scores
scoreboard players set stage ItemsExpedition 1
execute if score doPovExpedition Settings matches 1 run scoreboard players set fakeBlindness GameStatus 2
execute if score doPovExpedition Settings matches 1 run scoreboard players reset @p[team=Playing] PlayerDeaths
###execute if score doPovExpedition Settings matches 1 run scoreboard players set clock Timer 4
execute if score doPovExpedition Settings matches 1 run scoreboard players set music GameStatus 2

# Manage Items
function mc:events/random_loadout/locations/items/manage_items


# if Pov then func pov init
# If not pov then func not pov init