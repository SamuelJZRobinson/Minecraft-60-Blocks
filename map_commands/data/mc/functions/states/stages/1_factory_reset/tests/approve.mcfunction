# Set Data
function mc:states/stages/1_factory_reset/clear/clear_schedules
schedule function mc:states/stages/1_factory_reset/set/set_gamerules 2t replace
schedule function mc:states/stages/1_factory_reset/set/set_teams 4t replace
schedule function mc:states/stages/1_factory_reset/set/scores/set_scores 6t replace
schedule function mc:states/stages/1_factory_reset/set/set_bundles 8t replace
schedule function mc:states/stages/1_factory_reset/set/set_locations 10t replace
schedule function mc:states/stages/1_factory_reset/set/set_players 12t replace

### Avoid respawning items after every reset?
kill @e[tag=lobbyItem]

# Set State
scoreboard players set state GameStatus 2
schedule function mc:states/stages/manage_states 14t replace

# Status
tellraw @a {"text":"60 Seconds data loaded!","bold":false,"color":"green"}