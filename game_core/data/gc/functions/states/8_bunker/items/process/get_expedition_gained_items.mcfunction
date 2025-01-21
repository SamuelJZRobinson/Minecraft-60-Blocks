# Settings
execute if score doInPersonExpedition Settings matches 1 run scoreboard players set doSpawn ItemsBundles 1

# Copy Item Ids For Processing
data modify storage minecraft:itemsprocess processItemIds set from storage minecraft:itemsprocess expeditionGainedItemIds

# Process
function gc:states/8_bunker/items/process/check_item