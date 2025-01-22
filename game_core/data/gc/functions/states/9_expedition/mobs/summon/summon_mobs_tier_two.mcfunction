# Get Random Mob
execute store result score output Math run random value 1..3

# Spawn Mob
execute if score output Math matches 1 run function gc:states/9_expedition/mobs/summon/summon_zombified_piglin
execute if score output Math matches 2 run function gc:states/9_expedition/mobs/summon/summon_zoglin
execute if score output Math matches 3 run function gc:states/9_expedition/mobs/summon/summon_creeper

# Decrement Count
scoreboard players remove tierTwoMobsLeft MobsExpedition 1

# Loop
execute if score tierTwoMobsLeft MobsExpedition matches 1.. run function gc:states/9_expedition/mobs/summon/summon_mobs_tier_two