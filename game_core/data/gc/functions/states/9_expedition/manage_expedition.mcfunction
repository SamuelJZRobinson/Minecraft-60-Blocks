# Notes
  # For POV expeditions items must be spawned once when setting up loot to avoid complicated double checks.

# Character Health
execute if score doInPersonExpedition Settings matches 1 if score step ItemsExpedition matches 1 run scoreboard players add step ItemsExpedition 1
execute if score step ItemsExpedition matches 1 run function gc:states/9_expedition/characters/death/manage_character_death
# Sick chance (do later)
# Injury chance (do later)
# Taken Item Break
# function gc:states/9_expedition/items/item_break/check_item_break
# Teleport
execute if score doInPersonExpedition Settings matches 0 if score step ItemsExpedition matches 2 run scoreboard players add step ItemsExpedition 1
execute if score doInPersonExpedition Settings matches 1 if score step ItemsExpedition matches 2 run function gc:states/9_expedition/player/tp/manage_tp_player
# Loot
execute if score step ItemsExpedition matches 3 run function gc:states/9_expedition/items/loot_count/manage_loot_count
execute if score step ItemsExpedition matches 4 run function gc:states/9_expedition/items/item_loot/manage_loot
execute if score step ItemsExpedition matches 5 run function gc:states/9_expedition/items/food_loot/manage_loot
execute if score doInPersonExpedition Settings matches 1 if score step ItemsExpedition matches 6 run scoreboard players add step ItemsExpedition 1
execute if score step ItemsExpedition matches 6 run function gc:states/9_expedition/manage_end_manual
execute if score doInPersonExpedition Settings matches 1 if score step ItemsExpedition matches 7 at @p[team=Player] run function gc:states/8_bunker/items/process/manage_bundles
execute if score doInPersonExpedition Settings matches 1 if score step ItemsExpedition matches 7 run scoreboard players add step ItemsExpedition 1

# POV Extra Steps
  # Mobs
  execute if score doInPersonExpedition Settings matches 1 if score step ItemsExpedition matches 8 run function gc:states/9_expedition/mobs/set/manage_enemy_count
  execute if score doInPersonExpedition Settings matches 1 if score step ItemsExpedition matches 9 run function gc:states/9_expedition/mobs/summon/manage_summon_mobs
  execute if score doInPersonExpedition Settings matches 1 if score step ItemsExpedition matches 10 run function gc:states/9_expedition/mobs/spread/manage_spread_mobs
  execute if score doInPersonExpedition Settings matches 1 if score step ItemsExpedition matches 11 run function gc:states/9_expedition/items/spread/manage_spread_items
  # Kits
  execute if score doInPersonExpedition Settings matches 1 if score step ItemsExpedition matches 12 as @p[team=Player] run function gc:states/9_expedition/items/kits/manage_give_kit
  # Start
  execute if score doInPersonExpedition Settings matches 1 if score step ItemsExpedition matches 13 run function gc:states/9_expedition/start_pov_expedition