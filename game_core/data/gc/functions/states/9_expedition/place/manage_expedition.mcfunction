# Character Health
execute if score step ItemsExpedition matches 1 run function gc:states/9_expedition/place/characters/death/manage_character_death
# Sick chance (do later)
# Injury chance (do later)
# Taken Item Break
# function gc:states/9_expedition/place/items/item_break/check_item_break
# Loot
execute if score step ItemsExpedition matches 2 run function gc:states/9_expedition/place/items/loot_count/manage_loot_count
execute if score step ItemsExpedition matches 3 run function gc:states/9_expedition/place/items/item_loot/manage_loot
execute if score step ItemsExpedition matches 4 run function gc:states/9_expedition/place/items/food_loot/manage_loot
# POV Extra Steps
execute if score doPovExpedition Settings matches 1 run function gc:states/9_expedition/place/manage_expedition_pov