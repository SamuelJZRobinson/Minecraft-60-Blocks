# Set Data
data modify storage minecraft:bundles expeditionGearId append value 8
scoreboard players set gasMask ItemsBunker 0
scoreboard players set hasGasMask ItemsExpedition 1

# Insert POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/gas_mask_tool