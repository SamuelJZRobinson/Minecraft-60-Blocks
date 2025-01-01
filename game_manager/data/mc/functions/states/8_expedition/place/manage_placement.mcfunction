# Notes
  # set_loot_type_sustenance is scheduled to avoid duplicate executions likely caused by mc:status/scavenge/check_main_add
  # scheduling tp_entities as the player removes their identity
  # Scripts past set_loot_type_sustenance do not run when expeditionMode equals 0
  # manage_slot_give moved to cm:menu/submit/expedition_setup since items are removed when the expedition is first requested

# Standard
  # Characters
  execute if score stage ItemsExpedition matches 1 run function mc:states/8_expedition/place/characters/check/check_death
  # Gear
  execute if score stage ItemsExpedition matches 2 run function mc:states/8_expedition/place/items/check/check_gear_break
  # Loot
  execute if score stage ItemsExpedition matches 3 run function mc:states/8_expedition/place/items/check/check_loot_none
  execute if score stage ItemsExpedition matches 4 run function mc:states/8_expedition/place/items/set/set_loot_count
  execute if score stage ItemsExpedition matches 5 run function mc:states/8_expedition/place/items/set/set_loot_type
  execute if score stage ItemsExpedition matches 6 run function mc:states/8_expedition/place/items/set/set_loot_type_sustenance
# Extended POV
  # Mobs
  execute if score stage ItemsExpedition matches 7 if score expeditionMode Lobby matches 1 run function mc:states/8_expedition/place/mobs/set/set_enemy_count
  execute if score stage ItemsExpedition matches 8 if score expeditionMode Lobby matches 1 run schedule function mc:states/8_expedition/place/mobs/spawn/spawn_enemies 1t replace
  execute if score stage ItemsExpedition matches 9 if score expeditionMode Lobby matches 1 run function mc:events/random_loadout/locations/items/tp_entities