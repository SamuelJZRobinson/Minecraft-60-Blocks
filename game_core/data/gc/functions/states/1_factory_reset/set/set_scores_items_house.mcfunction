# Salvage Chest
scoreboard objectives add OpenShulkerBox minecraft.custom:minecraft.open_shulker_box {"bold":true,"color":"white","text":"Open Shulker Box"}
scoreboard players reset * OpenShulkerBox

# Objective
scoreboard objectives add ItemsHouse dummy {"bold":true,"color":"white","text":"Items House"}
# Item Count
scoreboard players set itemCount ItemsHouse 0
scoreboard players set hallwayItemsLeft ItemsHouse 0
scoreboard players set bathroomItemsLeft ItemsHouse 0
scoreboard players set kidsBedroomItemsLeft ItemsHouse 0
scoreboard players set kitchenItemsLeft ItemsHouse 0
scoreboard players set loungeItemsLeft ItemsHouse 0
scoreboard players set masterBedroomItemsLeft ItemsHouse 0
scoreboard players set sideBathroomItemsLeft ItemsHouse 0
# Soup
scoreboard players set hallwaySoupItemsLeft ItemsHouse 0
scoreboard players set kitchenSoupItemsLeft ItemsHouse 0
# Water
scoreboard players set hallwayWaterItemsLeft ItemsHouse 0
scoreboard players set kitchenWaterItemsLeft ItemsHouse 0
scoreboard players set bathroomWaterItemsLeft ItemsHouse 0
scoreboard players set sideBathroomWaterItemsLeft ItemsHouse 0
scoreboard objectives add ItemsHouseHigh dummy {"bold":true,"color":"white","text":"Items House High"}