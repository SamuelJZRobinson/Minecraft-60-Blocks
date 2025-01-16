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
  # Objective
  scoreboard objectives add ItemsBunker dummy {"bold":true,"color":"white","text":"Items Bunker"}
  # Items
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
  scoreboard players set bodyArmour ItemsBunker 0
  # Real Soup And Water Count
  scoreboard players set MULTIPLIER ItemsBunker 25
  scoreboard players set DIVISOR ItemsBunker 4
  scoreboard players set watersInt ItemsBunker 0
  scoreboard players set watersFloat ItemsBunker 0
  scoreboard players set soupsInt ItemsBunker 0
  scoreboard players set soupsFloat ItemsBunker 0

# Expedition
  # Objective
  scoreboard objectives add ItemsExpedition dummy {"bold":true,"color":"white","text":"Items Expedition"}
  # Items
  scoreboard players set hasAmmo ItemsExpedition 0
  scoreboard players set hasAxe ItemsExpedition 0
  scoreboard players set hasWater ItemsExpedition 0
  scoreboard players set hasBoyScoutHandbook ItemsExpedition 0
  scoreboard players set hasBugSpray ItemsExpedition 0
  scoreboard players set hasSoup ItemsExpedition 0
  scoreboard players set hasCards ItemsExpedition 0
  scoreboard players set hasCheckers ItemsExpedition 0
  scoreboard players set hasFlashlight ItemsExpedition 0
  scoreboard players set hasGasMask ItemsExpedition 0
  scoreboard players set hasGun ItemsExpedition 0
  scoreboard players set hasHarmonica ItemsExpedition 0
  scoreboard players set hasMap ItemsExpedition 0
  scoreboard players set hasMedkit ItemsExpedition 0
  scoreboard players set hasPadlock ItemsExpedition 0
  scoreboard players set hasRadio ItemsExpedition 0
  scoreboard players set hasSuitcase ItemsExpedition 0
  scoreboard players set hasBodyArmour ItemsExpedition 0

# Bundles
scoreboard objectives add ItemsBundles dummy {"bold":true,"color":"white","text":"Items Bundles"}
scoreboard players set itemId ItemsBundles 0
scoreboard players set itemsLeft ItemsBundles 0
scoreboard players set isAddition ItemsBundles 1
scoreboard players set doInstantAdd ItemsBundles 0
scoreboard players set doBundle ItemsBundles 0
scoreboard players set bundleCount ItemsBundles 0
scoreboard players set randomItemCount ItemsBundles 0
scoreboard players set suitcaseItemsLeft ItemsBundles 0