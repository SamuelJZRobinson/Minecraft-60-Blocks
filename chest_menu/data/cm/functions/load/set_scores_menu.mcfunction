# Open Chest
scoreboard objectives add OpenMenu minecraft.custom:minecraft.open_chest {"bold":true,"color":"white","text":"Open Menu"}
scoreboard players reset * OpenMenu

# Main
scoreboard objectives add MenuMain dummy {"bold":true,"color":"white","text":"Menu Main"}
scoreboard players reset * MenuMain
scoreboard players set bool MenuMain 0
scoreboard players set items MenuMain 0
scoreboard players set selection MenuMain 0

# Notices
  # Handled by bundles and books.

# Feed
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
scoreboard players set soupNotGiven MenuFeed 0
scoreboard players set waterGiven MenuFeed 0
scoreboard players set waterNotGiven MenuFeed 0

# Expedition
scoreboard objectives add MenuExpedition dummy {"bold":true,"color":"white","text":"Menu Expedition"}
# Alerts
scoreboard players set banditAlert MenuExpedition 0
scoreboard players set falloutAlert MenuExpedition 1
scoreboard players set mutantProtection MenuExpedition 0
scoreboard players set padlockProtection MenuExpedition 0
# Characters
scoreboard players set characterSelect MenuExpedition 0
scoreboard players set characterSent MenuExpedition 0
# Map
scoreboard players set mapSelect MenuExpedition 2
scoreboard players set mapVisited MenuExpedition 0
# Gear
scoreboard players set slotOne MenuExpedition -1
scoreboard players set slotTwo MenuExpedition -1
scoreboard players set slotThree MenuExpedition -1
scoreboard players set slotFour MenuExpedition -1
scoreboard players set slotNumber MenuExpedition 1
scoreboard players set slotItem MenuExpedition 0
# Prepared
scoreboard players set expeditionPrepared MenuExpedition 0
scoreboard players set expeditionReady MenuExpedition 0
# Duration
scoreboard players set expeditionDuration MenuExpedition 0

# Events
scoreboard objectives add MenuEvent dummy {"bold":true,"color":"white","text":"Menu Event"}
scoreboard players set event MenuEvent 0
scoreboard players set choice MenuEvent 0
scoreboard players set submit MenuEvent 0
scoreboard players set mutateRequest MenuEvent 0