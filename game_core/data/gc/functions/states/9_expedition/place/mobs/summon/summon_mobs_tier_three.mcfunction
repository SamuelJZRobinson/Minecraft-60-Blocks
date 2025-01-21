# Get Random Mob
execute store result score output Math run random value 1..3

# Spawn Mob
execute if score output Math matches 1 run function gc:states/9_expedition/place/mobs/summon/summon_enderman
execute if score output Math matches 2 run function gc:states/9_expedition/place/mobs/summon/summon_ravager
execute if score output Math matches 3 run function gc:states/9_expedition/place/mobs/summon/summon_warden

# Decrement Count
scoreboard players remove tierThreeMobsLeft MobsExpedition 1

# Loop
execute if score tierThreeMobsLeft MobsExpedition matches 1.. run function gc:states/9_expedition/place/mobs/summon/summon_mobs_tier_three