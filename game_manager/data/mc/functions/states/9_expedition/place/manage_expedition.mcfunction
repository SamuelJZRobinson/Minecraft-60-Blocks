# Character Health
execute if score step ItemsExpedition matches 1 run function mc:states/9_expedition/place/characters/check/check_character_death
# Sick chance (do later)
# Injury chance (do later)
# # Gear Break
# execute if score step ItemsExpedition matches 2 run function mc:states/9_expedition/place/items/check/check_gear_break
# Loot
execute if score step ItemsExpedition matches 3 run function mc:states/9_expedition/place/items/check/check_loot_none
execute if score step ItemsExpedition matches 4 run function mc:states/9_expedition/place/items/set/set_loot_count
execute if score step ItemsExpedition matches 5 run function mc:states/9_expedition/place/items/set/set_loot_type
execute if score step ItemsExpedition matches 6 run function mc:states/9_expedition/place/items/set/set_loot_type_sustenance
# POV Extra Steps
execute if score doPovExpedition Settings matches 1 run function mc:states/9_expedition/place/manage_expedition_pov