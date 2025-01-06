# Set Dialogue
scoreboard players set dialogue AtomicDrill 3
scoreboard players set dialogueMax AtomicDrill 4
# Create Marker
execute positioned 13.50 64.00 5.50 run function mc:states/5_atomic_drill/summon_waypoint_cross
execute positioned 13.50 66.00 5.50 run function mc:states/4_setup/place/floorplans/general/summon_waypoint_arrow