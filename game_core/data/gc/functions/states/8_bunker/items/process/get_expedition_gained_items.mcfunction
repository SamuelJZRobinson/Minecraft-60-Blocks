# Settings
scoreboard players set isAddition ItemsBundles 1
scoreboard players set doInstantAdd ItemsBundles 0
scoreboard players set doBundle ItemsBundles 1
execute if score doInPersonExpedition Settings matches 1 run scoreboard players set doSpawn ItemsBundles 1

# Copy Item Ids For Processing
data modify storage minecraft:itemsprocess processItemIds set from storage minecraft:itemsprocess expeditionGainedItemIds

# Process
function gc:states/8_bunker/items/process/check_item