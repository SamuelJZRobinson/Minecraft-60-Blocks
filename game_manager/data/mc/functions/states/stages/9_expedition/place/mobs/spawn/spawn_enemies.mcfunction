# Load Tiers
  # One
  execute if score loadMob MobsExpedition matches 1 if score tierOne MobsExpedition matches 1.. positioned 0 60 30 run function mc:states/stages/9_expedition/place/mobs/spawn/spawn_enemies_one
  execute if score loadMob MobsExpedition matches 1 if score tierOne MobsExpedition matches 1.. run scoreboard players remove tierOne MobsExpedition 1
  execute if score loadMob MobsExpedition matches 1 if score tierOne MobsExpedition matches 0 run scoreboard players add loadMob MobsExpedition 1
  # Two
  execute if score loadMob MobsExpedition matches 2 if score tierTwo MobsExpedition matches 1.. positioned 0 60 30 run function mc:states/stages/9_expedition/place/mobs/spawn/spawn_enemies_two
  execute if score loadMob MobsExpedition matches 2 if score tierTwo MobsExpedition matches 1.. run scoreboard players remove tierTwo MobsExpedition 1
  execute if score loadMob MobsExpedition matches 2 if score tierTwo MobsExpedition matches 0 run scoreboard players add loadMob MobsExpedition 1
  # Two (Bandits)
  execute if score loadMob MobsExpedition matches 3 if score tierTwoBandit MobsExpedition matches 1.. positioned 0 60 30 run function mc:states/stages/9_expedition/place/mobs/spawn/spawn_enemies_two_bandit
  execute if score loadMob MobsExpedition matches 3 if score tierTwoBandit MobsExpedition matches 1.. run scoreboard players remove tierTwoBandit MobsExpedition 1
  execute if score loadMob MobsExpedition matches 3 if score tierTwoBandit MobsExpedition matches 0 run scoreboard players add loadMob MobsExpedition 1
  # Three
  execute if score loadMob MobsExpedition matches 4 if score tierThree MobsExpedition matches 1.. positioned 0 60 30 run function mc:states/stages/9_expedition/place/mobs/spawn/spawn_enemies_three
  execute if score loadMob MobsExpedition matches 4 if score tierThree MobsExpedition matches 1.. run scoreboard players remove tierThree MobsExpedition 1
  execute if score loadMob MobsExpedition matches 4 if score tierThree MobsExpedition matches 0 run scoreboard players add loadMob MobsExpedition 1

# Call Root
execute if score loadMob MobsExpedition matches 5 run scoreboard players add stage ItemsExpedition 1
execute if score loadMob MobsExpedition matches 5 run schedule function mc:events/random_loadout/locations/items/manage_items 1t replace

# Loop
execute if score loadMob MobsExpedition matches 1..4 run function mc:states/stages/9_expedition/place/mobs/spawn/spawn_enemies