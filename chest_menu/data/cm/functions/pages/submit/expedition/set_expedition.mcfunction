# Save Scores
scoreboard players operation characterSent MenuExpedition = characterSelect MenuExpedition
scoreboard players operation mapVisited MenuExpedition = mapSelect MenuExpedition

# Characters
function cm:pages/submit/expedition/set_characters

# Items
scoreboard players set itemsTakenCount ItemsExpedition 0
function cm:pages/submit/expedition/items/manage_items
execute store result score itemsTakenCount ItemsExpedition run data get storage minecraft:itemsprocess expeditionTakenItemIds

# Reset Slots
scoreboard players set slotOne MenuExpedition 0
scoreboard players set slotTwo MenuExpedition 0
scoreboard players set slotThree MenuExpedition 0
scoreboard players set slotFour MenuExpedition 0

# Duration
execute unless score gamemode Settings matches 1 run function cm:pages/submit/expedition/set_expedition_days
execute if score task AtomicDrill matches 13 run scoreboard players set expeditionDuration MenuExpedition 3

# Debounce
scoreboard players set expeditionReady MenuExpedition 0