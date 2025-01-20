# Character Health
execute if score step ItemsExpedition matches 1 run function mc:states/9_expedition/place/characters/death/check_character_death
# Sick chance (do later)
# Injury chance (do later)

# Loot
execute if score step ItemsExpedition matches 2 run function mc:states/9_expedition/place/items/loot_none/check_loot_none
execute if score step ItemsExpedition matches 3 run function mc:states/9_expedition/place/items/set/set_loot_count
execute if score step ItemsExpedition matches 4 run function mc:states/9_expedition/place/items/set/set_loot_type
execute if score step ItemsExpedition matches 5 run function mc:states/9_expedition/place/items/set/set_loot_type_sustenance
# POV Extra Steps
execute if score doPovExpedition Settings matches 1 run function mc:states/9_expedition/place/manage_expedition_pov

# This would be on returning
# Gear Break
# function mc:states/9_expedition/place/items/item_break/check_item_break