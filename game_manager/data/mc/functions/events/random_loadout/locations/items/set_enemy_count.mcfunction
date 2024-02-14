# Set Mob Count
scoreboard players set tierTwoBandit MobsExpedition 0
scoreboard players operation mobCount MobsExpedition = maxLoot ItemsExpedition
execute if score banditAlert ChestMenuExplore matches 1 if score maxLoot ItemsExpedition matches ..4 run scoreboard players set mobCount MobsExpedition 5
scoreboard players add mobCount MobsExpedition 2

# Setup Dice
scoreboard players set mode em 1
scoreboard players set dynamicDifficulty em 0
scoreboard players set notRandom em 2
scoreboard players set startOne em 0

# Set Mob Tiers
  # Tier 1 (% in x, n+1)
  scoreboard players operation memory em = mobCount MobsExpedition
  execute if score banditAlert ChestMenuExplore matches 0 run scoreboard players set math_in1 em 63
  execute if score banditAlert ChestMenuExplore matches 1 run scoreboard players set math_in1 em 38
  function em:math/get_percentage
  scoreboard players operation tierOne MobsExpedition = math_out em
  scoreboard players set math_out em 0
  # Tier 2 (% in x, n+1)
  scoreboard players operation memory em = mobCount MobsExpedition
  execute if score banditAlert ChestMenuExplore matches 0 run scoreboard players set math_in1 em 38
  execute if score banditAlert ChestMenuExplore matches 1 run scoreboard players set math_in1 em 50
  function em:math/get_percentage
  scoreboard players operation tierTwo MobsExpedition = math_out em
  scoreboard players set math_out em 0
  # Tier 3 (% in x, n+1)
  scoreboard players operation memory em = mobCount MobsExpedition
  execute if score banditAlert ChestMenuExplore matches 1 run scoreboard players set math_in1 em 13
  execute if score banditAlert ChestMenuExplore matches 1 run function em:math/get_percentage
  scoreboard players operation tierThree MobsExpedition = math_out em
  execute if score tierThree MobsExpedition matches 2.. run scoreboard players set tierThree MobsExpedition 1
  scoreboard players set math_out em 0

# Check Diffirence
scoreboard players set diffirence MobsExpedition 0
scoreboard players operation diffirence MobsExpedition += tierOne MobsExpedition
scoreboard players operation diffirence MobsExpedition += tierTwo MobsExpedition
scoreboard players operation diffirence MobsExpedition += tierThree MobsExpedition
scoreboard players operation diffirence MobsExpedition -= mobCount MobsExpedition
execute unless score diffirence MobsExpedition matches 0 run function mc:events/random_loadout/locations/items/set_enemy_count_fix

# Bandits (% in x, n+1)
scoreboard players operation memory em = tierTwo MobsExpedition
scoreboard players set math_in1 em 80
execute if score banditAlert ChestMenuExplore matches 1 run function em:math/get_percentage
execute if score banditAlert ChestMenuExplore matches 1 run scoreboard players operation tierTwoBandit MobsExpedition = math_out em
execute if score banditAlert ChestMenuExplore matches 1 run scoreboard players operation tierTwo MobsExpedition -= tierTwoBandit MobsExpedition
scoreboard players set math_out em 0

# Call Root
scoreboard players set loadMob MobsExpedition 1
scoreboard players add stage ItemsExpedition 1
schedule function mc:events/random_loadout/locations/items/manage_items 1t replace