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

# Mobs Expedition
scoreboard objectives add MobsExpedition dummy {"bold":true,"color":"white","text":"Mobs Expedition"}
# Load
scoreboard players set mobCount MobsExpedition 0
scoreboard players set DOUBLE ItemsExpedition 2
# Danger Tiers
scoreboard players set tierOneMobsLeft MobsExpedition 0
scoreboard players set tierTwoMobsLeft MobsExpedition 0
scoreboard players set tierThreeMobsLeft MobsExpedition 0