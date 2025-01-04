# Salvage Chest
scoreboard objectives add OpenShulkerBox minecraft.custom:minecraft.open_shulker_box {"bold":true,"color":"white","text":"Open Shulker Box"}
scoreboard players reset * OpenShulkerBox

# House
scoreboard objectives add ItemsHouse dummy {"bold":true,"color":"white","text":"Items House"}
scoreboard objectives add ItemsHouseHigh dummy {"bold":true,"color":"white","text":"Items House High"}

# Bunker
  scoreboard objectives add ItemsBunker dummy {"bold":true,"color":"white","text":"Items Bunker"}
  # Official
  scoreboard players set ammo ItemsBunker 0
  scoreboard players set axe ItemsBunker 0
  scoreboard players set bottles ItemsBunker 0
  scoreboard players set boyScoutHandbook ItemsBunker 0
  scoreboard players set bugSpray ItemsBunker 0
  scoreboard players set cans ItemsBunker 0
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
  scoreboard players set armour ItemsBunker 0

# Items Bundles
scoreboard objectives add ItemsBundles dummy {"bold":true,"color":"white","text":"Items Bundles"}
scoreboard players set mode ItemsBundles 1
scoreboard players set setBundle ItemsBundles 1
scoreboard players set step ItemsBundles 1
scoreboard players set itemId ItemsBundles 0
scoreboard players set itemsOwed ItemsBundles 0
scoreboard players set itemsLeft ItemsBundles 0
scoreboard players set destroyItemFails ItemsBundles 0

# Real Count
scoreboard objectives add RealCount dummy {"bold":true,"color":"white","text":"Real Count"}
# Math
scoreboard players set MULTIPLIER RealCount 25
scoreboard players set DIVISOR RealCount 4
# Water Bottles
scoreboard players set bottlesInt RealCount 0
scoreboard players set bottlesFloat RealCount 0
# Soup
scoreboard players set SOUP_MIN RealCount 0
scoreboard players set SOUP_MAX RealCount 0
scoreboard players set cansInt RealCount 0
scoreboard players set cansFloats RealCount 0