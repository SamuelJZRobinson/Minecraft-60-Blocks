# Summon Mob Tiers
execute if score tierOneMobsLeft MobsExpedition matches 1.. run function mc:states/9_expedition/place/mobs/summon/summon_enemies_tier_one
execute if score tierTwoMobsLeft MobsExpedition matches 1.. if score banditAlert MenuExpedition matches 1 run function mc:states/9_expedition/place/mobs/summon/summon_enemies_tier_two_bandits
execute if score tierTwoMobsLeft MobsExpedition matches 1.. if score banditAlert MenuExpedition matches 0 run function mc:states/9_expedition/place/mobs/summon/summon_enemies_tier_two
execute if score tierThreeMobsLeft MobsExpedition matches 1.. run function mc:states/9_expedition/place/mobs/summon/summon_enemies_tier_three

# Call Root
scoreboard players add step ItemsExpedition 1
schedule function mc:states/9_expedition/place/manage_expedition 1t replace