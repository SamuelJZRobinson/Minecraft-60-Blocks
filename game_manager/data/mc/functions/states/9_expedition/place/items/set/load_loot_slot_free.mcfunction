# Reset Scores
scoreboard players set slotOneCount ItemsExpedition 0
scoreboard players set slotTwoCount ItemsExpedition 0
scoreboard players set slotThreeCount ItemsExpedition 0
scoreboard players set slotOneFree ItemsExpedition 0
scoreboard players set slotTwoFree ItemsExpedition 0
scoreboard players set slotThreeFree ItemsExpedition 0

# Count Free Item Tiers
  # Official
  execute if score ammo ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotOneFree append value 1
  execute if score axe ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotTwoFree append value 2
  execute if score boyScoutHandbook ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotOneFree append value 3
  execute if score bugSpray ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotOneFree append value 4
  execute if score cards ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotOneFree append value 5
  execute if score checkers ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotOneFree append value 6
  execute if score flashlight ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotOneFree append value 7
  execute if score gasMask ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotOneFree append value 8
  execute if score gun ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotTwoFree append value 9
  execute if score harmonica ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotOneFree append value 10
  execute if score map ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotOneFree append value 11
  execute if score medkit ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotTwoFree append value 12
  execute if score padlock ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotOneFree append value 13
  execute if score radio ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotOneFree append value 14
  execute if score suitcase ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotThreeFree append value 16
  # Custom
  execute if score bodyArmour ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess slotThreeFree append value 18

# Count Free Slots
execute store result score slotOneFree ItemsExpedition run data get storage minecraft:itemsprocess slotOneFree
execute store result score slotTwoFree ItemsExpedition run data get storage minecraft:itemsprocess slotTwoFree 
execute store result score slotThreeFree ItemsExpedition run data get storage minecraft:itemsprocess slotThreeFree 