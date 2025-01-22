# Get Random Tier
execute if score banditAlert MenuExpedition matches 0 store result score randomTier MobsExpedition run random value 1..3
execute if score banditAlert MenuExpedition matches 1 store result score randomTier MobsExpedition run random value 1..2

# Increment Tier
execute if score banditAlert MenuExpedition matches 0 if score randomTier MobsExpedition matches 1 run scoreboard players add tierOneMobsLeft MobsExpedition 1
execute if score banditAlert MenuExpedition matches 0 if score randomTier MobsExpedition matches 2 run scoreboard players add tierTwoMobsLeft MobsExpedition 1
execute if score banditAlert MenuExpedition matches 0 if score randomTier MobsExpedition matches 3 run scoreboard players add tierThreeMobsLeft MobsExpedition 1
execute if score banditAlert MenuExpedition matches 1 if score randomTier MobsExpedition matches 1 run scoreboard players add tierOneMobsLeft MobsExpedition 1
execute if score banditAlert MenuExpedition matches 1 if score randomTier MobsExpedition matches 2 run scoreboard players add tierTwoMobsLeft MobsExpedition 1

# Decrement Score
scoreboard players remove remainder MobsExpedition 1

# Loop
execute if score remainder MobsExpedition matches 1.. run function gc:states/9_expedition/mobs/set/set_enemy_count_fix
execute if score remainder MobsExpedition matches ..0 run scoreboard players reset randomTier MobsExpedition