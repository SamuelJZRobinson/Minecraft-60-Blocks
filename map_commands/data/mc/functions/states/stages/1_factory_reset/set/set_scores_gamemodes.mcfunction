# Atomic Drill
scoreboard objectives add AtomicDrill dummy {"bold":true,"color":"white","text":"AtomicDrill"}
scoreboard players set dialogue AtomicDrill 0
scoreboard players set itemCount AtomicDrill 0
scoreboard players set task AtomicDrill 0
scoreboard players set stage AtomicDrill 0
scoreboard players set expeditionDeath AtomicDrill 0

# Scavenge
  # Delivery
  scoreboard objectives add OpenShulkerBox minecraft.custom:minecraft.open_shulker_box {"bold":true,"color":"white","text":"OpenShulkerBox"}
  scoreboard players reset * OpenShulkerBox
  # Items
  scoreboard objectives add ItemsBunker dummy {"bold":true,"color":"white","text":"ItemsBunker"}
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