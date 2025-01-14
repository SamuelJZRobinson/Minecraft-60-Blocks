# Salvage Chest
scoreboard objectives add OpenShulkerBox minecraft.custom:minecraft.open_shulker_box {"bold":true,"color":"white","text":"Open Shulker Box"}
scoreboard players reset * OpenShulkerBox

# House
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

# Bunker
  scoreboard objectives add ItemsBunker dummy {"bold":true,"color":"white","text":"Items Bunker"}
  # Official
  scoreboard players set ammo ItemsBunker 0
  scoreboard players set axe ItemsBunker 0
  scoreboard players set waters ItemsBunker 0
  scoreboard players set boyScoutHandbook ItemsBunker 0
  scoreboard players set bugSpray ItemsBunker 0
  scoreboard players set soups ItemsBunker 0
  scoreboard players set cards ItemsBunker 0
  scoreboard players set checkers ItemsBunker 0
  scoreboard players set flashlight ItemsBunker 0
  scoreboard players set gasMask ItemsBunker 0
  scoreboard players set gun ItemsBunker 0
  scoreboard players set harmonica ItemsBunker 0
  scoreboard players set map ItemsBunker 0
  scoreboard players set medkit ItemsBunker 0
  scoreboard players set padlock ItemsBunker 0
  scoreboard players set radio ItemsBunker 0
  scoreboard players set suitcase ItemsBunker 0
  # Custom
  scoreboard players set bodyArmour ItemsBunker 0
  # Real Soup And Water Count
  scoreboard players set MULTIPLIER ItemsBunker 25
  scoreboard players set DIVISOR ItemsBunker 4
  scoreboard players set watersInt ItemsBunker 0
  scoreboard players set watersFloat ItemsBunker 0
  scoreboard players set soupsInt ItemsBunker 0
  scoreboard players set soupsFloat ItemsBunker 0

# Items Bundles
scoreboard objectives add ItemsBundles dummy {"bold":true,"color":"white","text":"Items Bundles"}
scoreboard players set itemId ItemsBundles 0
scoreboard players set itemsLeft ItemsBundles 0
scoreboard players set isAddition ItemsBundles 1
scoreboard players set doInstantAdd ItemsBundles 0
scoreboard players set doBundle ItemsBundles 0
scoreboard players set bundleCount ItemsBundles 0
scoreboard players set randomItemCount ItemsBundles 0
scoreboard players set suitcaseItemsLeft ItemsBundles 0