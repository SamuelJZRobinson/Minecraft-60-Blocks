# OPEN CHEST
scoreboard objectives add OpenMenu minecraft.custom:minecraft.open_chest {"bold":true,"color":"white","text":"Open Menu"}
scoreboard players reset * OpenMenu

# MAIN
scoreboard objectives add MenuMain dummy {"bold":true,"color":"white","text":"Menu Main"}
scoreboard players reset * MenuMain
scoreboard players set bool MenuMain 0
scoreboard players set items MenuMain 0
scoreboard players set selection MenuMain 0

# NOTICES
  # Handled by bundles and books.

# FEEDING
scoreboard objectives add MenuFeed dummy {"bold":true,"color":"white","text":"Menu Feed"}
# Dolores
scoreboard players set doloresGiveSoup MenuFeed 0
scoreboard players set doloresGiveWater MenuFeed 0
# Mary
scoreboard players set maryGiveSoup MenuFeed 0
scoreboard players set maryGiveWater MenuFeed 0
# Ted
scoreboard players set tedGiveSoup MenuFeed 0
scoreboard players set tedGiveWater MenuFeed 0
# Timmy
scoreboard players set timmyGiveSoup MenuFeed 0
scoreboard players set timmyGiveWater MenuFeed 0
# Medkit
scoreboard players set giveMedkit MenuFeed 0
# Total
scoreboard players set hasItems ItemsBunker 0
scoreboard players set itemCount ItemsBunker 0
scoreboard players set soupGiven MenuFeed 0
scoreboard players set waterGiven MenuFeed 0

# EXPLORE
scoreboard objectives add MenuExplore dummy {"bold":true,"color":"white","text":"Menu Explore"}
# Alerts
scoreboard players set banditAlert MenuExplore 0
scoreboard players set falloutAlert MenuExplore 1
scoreboard players set mutantProtection MenuExplore 0
scoreboard players set padlockProtection MenuExplore 0
# Characters
scoreboard players set characterSelect MenuExplore 0
scoreboard players set characterSent MenuExplore 0
# Map
scoreboard players set mapSelect MenuExplore 2
scoreboard players set mapVisited MenuExplore 0
# Gear
scoreboard players set slotOne MenuExplore -1
scoreboard players set slotTwo MenuExplore -1
scoreboard players set slotThree MenuExplore -1
scoreboard players set slotFour MenuExplore -1
scoreboard players set slotNumber MenuExplore 1
scoreboard players set slotItem MenuExplore 0
# Prepared
scoreboard players set prepareExpedition MenuExplore 0
scoreboard players set expeditionReady MenuExplore 0
# Duration
scoreboard players set expeditionDuration MenuExplore 0

# EVENTS
scoreboard objectives add MenuEvent dummy {"bold":true,"color":"white","text":"Menu Event"}
scoreboard players set event MenuEvent 0
scoreboard players set choice MenuEvent 0
scoreboard players set submit MenuEvent 0
scoreboard players set mutateRequest MenuEvent 0