# Notes
  # set_loot_type_sustenance is scheduled to avoid duplicate executions likely caused by mc:utility/scavenge/check_main_add
  # scheduling tp_entities as the player removes their identity
  # Scripts past set_loot_type_sustenance do not run when expeditionMode equals 0
  # manage_slot_give moved to cm:menu/submit/setup_expedition since items are removed when the expedition is first requested

# Set Items
execute if score stage ItemsExpedition matches 1 run function mc:events/random_loadout/locations/items/set_loot_count
execute if score stage ItemsExpedition matches 2 run function mc:events/random_loadout/locations/items/set_loot_type
execute if score stage ItemsExpedition matches 3 run schedule function mc:events/random_loadout/locations/items/set_loot_type_sustenance 1t replace
execute if score stage ItemsExpedition matches 4 run function mc:events/random_loadout/locations/items/set_enemy_count
execute if score stage ItemsExpedition matches 5 run schedule function mc:states/stages/9_expedition/place/mobs/spawn/spawn_enemies 1t replace
execute if score stage ItemsExpedition matches 6 run function mc:events/random_loadout/locations/items/tp_entities