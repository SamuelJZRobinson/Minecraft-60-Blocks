# Notes
  # Bandits are tier 2.

# Set Base Mob Count
scoreboard players operation mobCount MobsExpedition = lootLeft ItemsExpedition
scoreboard players operation mobCount MobsExpedition *= DOUBLE ItemsExpedition
scoreboard players operation remainder MobsExpedition = mobCount MobsExpedition

# Set Mob Tiers
execute if score banditAlert MenuExpedition matches 0 store result score tierOneMobsLeft MobsExpedition run function gc:utility/math/get_percentage_of_value_via_score {"percentage":60,"score":mobCount,"objective":MobsExpedition}
execute if score banditAlert MenuExpedition matches 0 store result score tierTwoMobsLeft MobsExpedition run function gc:utility/math/get_percentage_of_value_via_score {"percentage":20,"score":mobCount,"objective":MobsExpedition}
execute if score banditAlert MenuExpedition matches 0 store result score tierThreeMobsLeft MobsExpedition run function gc:utility/math/get_percentage_of_value_via_score {"percentage":10,"score":mobCount,"objective":MobsExpedition}
execute if score banditAlert MenuExpedition matches 1 store result score tierOneMobsLeft MobsExpedition run function gc:utility/math/get_percentage_of_value_via_score {"percentage":40,"score":mobCount,"objective":MobsExpedition}
execute if score banditAlert MenuExpedition matches 1 store result score tierTwoMobsLeft MobsExpedition run function gc:utility/math/get_percentage_of_value_via_score {"percentage":60,"score":mobCount,"objective":MobsExpedition}
execute if score banditAlert MenuExpedition matches 1 store result score tierThreeMobsLeft MobsExpedition run function gc:utility/math/get_percentage_of_value_via_score {"percentage":0,"score":mobCount,"objective":MobsExpedition}

# Fix Remainder
scoreboard players operation remainder MobsExpedition -= tierOneMobsLeft MobsExpedition
scoreboard players operation remainder MobsExpedition -= tierTwoMobsLeft MobsExpedition
scoreboard players operation remainder MobsExpedition -= tierThreeMobsLeft MobsExpedition
execute if score remainder MobsExpedition matches 1.. run function gc:states/9_expedition/place/mobs/set/set_enemy_count_fix

# Proceed
schedule function gc:states/9_expedition/place/inc_step 1t replace