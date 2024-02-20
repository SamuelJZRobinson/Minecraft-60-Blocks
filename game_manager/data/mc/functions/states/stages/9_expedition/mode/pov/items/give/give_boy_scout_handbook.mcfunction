# Set Data
data modify storage minecraft:bundles expeditionGearId append value 3
scoreboard players set boyScoutHandbook ItemsBunker 0
# Give POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/boy_scout_handbook_tool