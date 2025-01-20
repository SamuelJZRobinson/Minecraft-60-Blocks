# Teleport
execute if score step ItemsExpedition matches 6 run function mc:states/9_expedition/place/player/tp/manage_tp_player
# Mobs
execute if score step ItemsExpedition matches 7 run function mc:states/9_expedition/place/mobs/set/set_enemy_count
execute if score step ItemsExpedition matches 8 run function mc:states/9_expedition/place/mobs/summon/manage_summon_mobs
execute if score step ItemsExpedition matches 9 run function mc:states/9_expedition/place/mobs/spread/manage_spread_mobs
execute if score step ItemsExpedition matches 10 run function mc:states/9_expedition/place/items/summon/manage_summon_items
execute if score step ItemsExpedition matches 11 run function mc:states/9_expedition/place/items/spread/manage_spread_items
# Gear
execute if score step ItemsExpedition matches 12 run function mc:states/9_expedition/place/items/kits/manage_give_kit
# Start
execute if score step ItemsExpedition matches 13 run function mc:states/9_expedition/place/start_pov_expedition