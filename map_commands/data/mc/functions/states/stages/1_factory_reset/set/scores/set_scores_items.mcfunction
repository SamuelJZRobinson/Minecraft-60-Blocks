# Scavenge
  # Salvage Crate
  scoreboard objectives add OpenShulkerBox minecraft.custom:minecraft.open_shulker_box {"bold":true,"color":"white","text":"Open Shulker Box"}
  scoreboard players reset * OpenShulkerBox
  # Items
  scoreboard objectives add ItemsBunker dummy {"bold":true,"color":"white","text":"Items Bunker"}
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
  scoreboard players set armour ItemsBunker 0
  # Check Items
  scoreboard objectives add CheckItems dummy {"bold":true,"color":"white","text":"CheckItems"}
  scoreboard players set stage CheckItems 1
  scoreboard players set itemId CheckItems 0
  scoreboard players set itemsOwed CheckItems 0
  scoreboard players set itemsTotal CheckItems 0
  scoreboard players set destroyItemFails CheckItems 0

  scoreboard objectives add MobsExpedition dummy {"bold":true,"color":"white","text":"Mobs Expedition"}
  scoreboard objectives add ItemsHouse dummy {"bold":true,"color":"white","text":"Items House"}
  scoreboard objectives add ItemsHouseHigh dummy {"bold":true,"color":"white","text":"Items House High"}
  scoreboard objectives add RealCount dummy {"bold":true,"color":"white","text":"Real Count"}