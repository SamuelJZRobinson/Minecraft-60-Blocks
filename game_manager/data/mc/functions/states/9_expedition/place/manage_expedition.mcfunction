# Character Death
execute if score step ItemsExpedition matches 1 run function mc:states/9_expedition/place/characters/check/check_character_death
# Gear Break
execute if score step ItemsExpedition matches 2 run function mc:states/9_expedition/place/items/check/check_gear_break
# Loot
execute if score step ItemsExpedition matches 3 run function mc:states/9_expedition/place/items/check/check_loot_none
execute if score step ItemsExpedition matches 4 run function mc:states/9_expedition/place/items/set/set_loot_count
execute if score step ItemsExpedition matches 5 run function mc:states/9_expedition/place/items/set/set_loot_type
execute if score step ItemsExpedition matches 6 run function mc:states/9_expedition/place/items/set/set_loot_type_sustenance
# Mobs
execute if score step ItemsExpedition matches 7 if score doPovExpedition Settings matches 1 run function mc:states/9_expedition/place/player/tp/manage_tp_player
execute if score step ItemsExpedition matches 8 if score doPovExpedition Settings matches 1 run function mc:states/9_expedition/place/mobs/set/set_enemy_count
execute if score step ItemsExpedition matches 9 if score doPovExpedition Settings matches 1 run function mc:states/9_expedition/place/mobs/summon/manage_summon_mobs
execute if score step ItemsExpedition matches 10 if score doPovExpedition Settings matches 1 run function mc:states/9_expedition/place/mobs/spread/manage_spread_mobs
execute if score step ItemsExpedition matches 11 if score doPovExpedition Settings matches 1 run function mc:states/9_expedition/place/items/summon/manage_summon_items
execute if score step ItemsExpedition matches 12 if score doPovExpedition Settings matches 1 run function mc:states/9_expedition/place/items/spread/manage_spread_items