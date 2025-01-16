# EXPEDITION ITEMS
scoreboard objectives add ItemsExpedition dummy {"bold":true,"color":"white","text":"Items Expedition"}
scoreboard players set hasAmmo ItemsExpedition 0
scoreboard players set hasBoyScoutHandbook ItemsExpedition 0
scoreboard players set hasBugSpray ItemsExpedition 0
scoreboard players set hasCards ItemsExpedition 0
scoreboard players set hasCheckers ItemsExpedition 0
scoreboard players set hasFlashlight ItemsExpedition 0
scoreboard players set hasGasMask ItemsExpedition 0
scoreboard players set hasHarmonica ItemsExpedition 0
scoreboard players set hasMap ItemsExpedition 0
scoreboard players set hasPadlock ItemsExpedition 0
scoreboard players set hasRadio ItemsExpedition 0
scoreboard players set hasSoup ItemsExpedition 0
scoreboard players set hasWater ItemsExpedition 0
scoreboard players set hasAxe ItemsExpedition 0
scoreboard players set hasGun ItemsExpedition 0
scoreboard players set hasMedkit ItemsExpedition 0
scoreboard players set hasSuitcase ItemsExpedition 0
scoreboard players set hasBodyArmour ItemsExpedition 0

# Load
### What does this do?
scoreboard players set loadItem ItemsExpedition 0
# Character
scoreboard players set deathChance ItemsExpedition 0
# Loot
scoreboard players set lootLeft ItemsExpedition 0
scoreboard players set sustenanceCount ItemsExpedition 0
scoreboard players set soupCount ItemsExpedition 0
scoreboard players set waterCount ItemsExpedition 0

# EXPEDITION ODDS
scoreboard objectives add ExpeditionOdds dummy {"bold":true,"color":"white","text":"Expedition Odds"}
# Boost
scoreboard players set SUPPLY_DROP ExpeditionOdds 8
# Loot
scoreboard players set NO_LOOT ExpeditionOdds 14
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
scoreboard players set DOUBLE ItemsExpedition 2
scoreboard players set loadMob MobsExpedition 0
scoreboard players set tierOneMobsLeft MobsExpedition 0
# Danger Tiers
scoreboard players set tierOneMobsLeft MobsExpedition 0
scoreboard players set tierTwoMobsLeft MobsExpedition 0
scoreboard players set tierTwoMobsLeftBandit MobsExpedition 0
scoreboard players set tierThreeMobsLeft MobsExpedition 0