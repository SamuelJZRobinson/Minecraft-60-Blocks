# EXPEDITION ITEMS
scoreboard objectives add ItemsExpedition dummy {"bold":true,"color":"white","text":"Items Expedition"}
### What does this do?
scoreboard players set showEscape ItemsExpedition 0
# Load
### What does this do?
scoreboard players set loadItem ItemsExpedition 0
# Character
scoreboard players set deathChance ItemsExpedition 0
# Special
scoreboard players set specialCount ItemsExpedition 0
scoreboard players set specialCountCopy ItemsExpedition 0
scoreboard players set specialRemove ItemsExpedition 0
# Slot One
scoreboard players set slotOneCount ItemsExpedition 0
scoreboard players set slotOneFree ItemsExpedition 0
scoreboard players set slotOneTry ItemsExpedition 0
# Slot Two
scoreboard players set slotTwoCount ItemsExpedition 0
scoreboard players set slotTwoFree ItemsExpedition 0
scoreboard players set slotTwoTry ItemsExpedition 0
# Slot Three
scoreboard players set slotThreeCount ItemsExpedition 0
scoreboard players set slotThreeFree ItemsExpedition 0
scoreboard players set slotThreeTry ItemsExpedition 0
# Loot
scoreboard players set maxLoot ItemsExpedition 0
scoreboard players set sustenanceCount ItemsExpedition 0
scoreboard players set soupCount ItemsExpedition 0
scoreboard players set waterCount ItemsExpedition 0

# EXPEDITION ODDS
scoreboard objectives add ExpeditionOdds dummy {"bold":true,"color":"white","text":"Expedition Odds"}
# Boost
scoreboard players set SUPPLY_BOOST ExpeditionOdds 8
scoreboard players set TIMMY_BOOST ExpeditionOdds 5
# Loot
scoreboard players set NO_LOOT ExpeditionOdds 14
# Fatigue
scoreboard players set FATIGUE_PENALTY ExpeditionOdds 10
# Item
scoreboard players set ITEM_TIER ExpeditionOdds 6
scoreboard players set ITEM_BOOST ExpeditionOdds 4
# Risk
scoreboard players set RISK_LEVEL_ONE ExpeditionOdds 3
scoreboard players set RISK_LEVEL_TWO ExpeditionOdds 6
scoreboard players set RISK_LEVEL_THREE ExpeditionOdds 9

# Mobs Expedition
scoreboard objectives add MobsExpedition dummy {"bold":true,"color":"white","text":"Mobs Expedition"}
# Load
scoreboard players set mobCount MobsExpedition 0
scoreboard players set loadMob MobsExpedition 0
scoreboard players set diffirence MobsExpedition 0
# Danger Tiers
scoreboard players set tierOne MobsExpedition 0
scoreboard players set tierTwo MobsExpedition 0
scoreboard players set tierTwoBandit MobsExpedition 0
scoreboard players set tierThree MobsExpedition 0