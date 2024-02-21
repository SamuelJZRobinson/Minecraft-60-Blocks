# OPEN CHEST
scoreboard objectives add OpenChestMenu minecraft.custom:minecraft.open_chest {"bold":true,"color":"white","text":"Open Chest Menu"}
scoreboard players reset * OpenChestMenu

# MAIN
scoreboard objectives add ChestMenuMain dummy {"bold":true,"color":"white","text":"Chest Menu Main"}
scoreboard players reset * ChestMenuMain
scoreboard players set bool ChestMenuMain 0
scoreboard players set items ChestMenuMain 0
scoreboard players set selection ChestMenuMain 0

# NOTICES
  # Handled by bundles and books.

# FEEDING
scoreboard objectives add ChestMenuFeed dummy {"bold":true,"color":"white","text":"Chest Menu Feed"}
# Dolores
scoreboard players set doloresGiveCan ChestMenuFeed 0
scoreboard players set doloresGiveBottle ChestMenuFeed 0
# Mary
scoreboard players set maryGiveCan ChestMenuFeed 0
scoreboard players set maryGiveBottle ChestMenuFeed 0
# Ted
scoreboard players set tedGiveCan ChestMenuFeed 0
scoreboard players set tedGiveBottle ChestMenuFeed 0
# Timmy
scoreboard players set timmyGiveCan ChestMenuFeed 0
scoreboard players set timmyGiveBottle ChestMenuFeed 0
# Medkit
scoreboard players set giveMedkit ChestMenuFeed 0
# Total
scoreboard players set hasItems ItemsBunker 0
scoreboard players set itemCount ItemsBunker 0
scoreboard players set cansGiven ChestMenuFeed 0
scoreboard players set bottlesGiven ChestMenuFeed 0

# EXPLORE
scoreboard objectives add ChestMenuExplore dummy {"bold":true,"color":"white","text":"Chest Menu Explore"}
# Alerts
scoreboard players set banditAlert ChestMenuExplore 0
scoreboard players set falloutAlert ChestMenuExplore 1
scoreboard players set mutantProtection ChestMenuExplore 0
scoreboard players set padlockProtection ChestMenuExplore 0
# Characters
scoreboard players set characterSelect ChestMenuExplore 0
scoreboard players set characterSent ChestMenuExplore 0
# Map
scoreboard players set locationSelect ChestMenuExplore 2
scoreboard players set preLocationVisited ChestMenuExplore 0
scoreboard players set locationVisited ChestMenuExplore 0
# Gear
scoreboard players set slotOne ChestMenuExplore -1
scoreboard players set slotTwo ChestMenuExplore -1
scoreboard players set slotThree ChestMenuExplore -1
scoreboard players set slotFour ChestMenuExplore -1
scoreboard players set slotNumber ChestMenuExplore 1
scoreboard players set slotSelection ChestMenuExplore 0
# Prepared
scoreboard players set expeditionPrepared ChestMenuExplore 0
scoreboard players set prepare ChestMenuExplore 0
# Duration
scoreboard players set expeditionDuration ChestMenuExplore 0

# EVENTS
scoreboard objectives add ChestMenuEvent dummy {"bold":true,"color":"white","text":"Chest Menu Event"}
scoreboard players set event ChestMenuEvent 0
scoreboard players set choice ChestMenuEvent 0
scoreboard players set submit ChestMenuEvent 0
scoreboard players set mutateRequest ChestMenuEvent 0