# Get Random Mob
execute store result score output Math run random value 1..2

# Spawn Mob
execute if score output Math matches 1 run function gc:states/9_expedition/place/mobs/summon/summon_pillager
execute if score output Math matches 2 run function gc:states/9_expedition/place/mobs/summon/summon_vindicator

# Decrement Count
scoreboard players remove tierTwoMobsLeft MobsExpedition 1

# Loop
execute if score tierTwoMobsLeft MobsExpedition matches 1.. run function gc:states/9_expedition/place/mobs/summon/summon_mobs_tier_two_bandits