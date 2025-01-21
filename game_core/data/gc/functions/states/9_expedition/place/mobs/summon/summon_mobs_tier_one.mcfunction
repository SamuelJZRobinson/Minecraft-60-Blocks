# Get Random Mob
execute store result score output Math run random value 1..4

# Spawn Mob
execute if score output Math matches 1 run function gc:states/9_expedition/place/mobs/summon/summon_endermite
execute if score output Math matches 2 run function gc:states/9_expedition/place/mobs/summon/summon_husk
execute if score output Math matches 3 run function gc:states/9_expedition/place/mobs/summon/summon_stray
execute if score output Math matches 4 run function gc:states/9_expedition/place/mobs/summon/summon_spider

# Decrement Count
scoreboard players remove tierOneMobsLeft MobsExpedition 1

# Loop
execute if score tierOneMobsLeft MobsExpedition matches 1.. run function gc:states/9_expedition/place/mobs/summon/summon_mobs_tier_one