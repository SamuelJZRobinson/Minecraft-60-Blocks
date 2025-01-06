# Set Dialogue
title @a times 0 80 0
scoreboard players set dialogue AtomicDrill 1
scoreboard players set dialogueMax AtomicDrill 2
# Create Marker
execute positioned 22.50 64.00 -6.50 run function mc:states/5_atomic_drill/summon_waypoint_cross
execute positioned 22.50 66.00 -6.50 run function mc:states/4_setup/place/floorplans/general/summon_waypoint_arrow
# Effects
execute as @p[team=Player] run function mc:utility/effects/effects_scavenge_default