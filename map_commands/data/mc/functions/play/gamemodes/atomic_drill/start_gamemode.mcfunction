# Set Scores
scoreboard players set difficulty Lobby 2
scoreboard players set math_out em 1
scoreboard players set lockInventory GameStatus 2
scoreboard players set task AtomicDrill 1
# Force Loadout 1
function mc:events/random_loadout/house/floorplans/clone_floorplan1_drill
# Activate Task Loop
schedule function mc:play/gamemodes/atomic_drill/task_loop 3t replace
# Teleport To Normal House
schedule function mc:play/gamemodes/teleport_to_house 4t replace