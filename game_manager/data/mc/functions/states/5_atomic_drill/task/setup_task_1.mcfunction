# Set Dialogue
data modify storage atomicdrill dialogue append value "Welcome to a simulated atomic drill! Pay attention and you could survive!"
data modify storage atomicdrill dialogue append value "Do you need an invitation, move yourself to the marker!"
# Create Marker
execute positioned 19.50 -30.00 0.50 run function mc:states/5_atomic_drill/summon/summon_waypoint_cross
execute positioned 19.50 -28.00 0.50 run function mc:states/4_setup/place/floorplans/general/summon_waypoint_arrow
# Effects
execute as @p[team=Player] run function mc:utility/effects/effects_scavenge_default