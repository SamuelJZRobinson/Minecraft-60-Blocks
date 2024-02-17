# Gear Break Chance
execute if score doPovExpedition Settings matches 1 run data remove storage minecraft:bundles expeditionGearId
execute if score doPovExpedition Settings matches 0 if data storage minecraft:bundles expeditionGearId run function mc:events/random_loadout/locations/items/gear_break_chance

# Loot Chance
execute if score doPovExpedition Settings matches 1 run schedule function mc:events/random_loadout/locations/items/set_loot_count_items 2t replace
execute if score doPovExpedition Settings matches 0 run schedule function mc:events/random_loadout/locations/items/set_loot_count_none 2t replace