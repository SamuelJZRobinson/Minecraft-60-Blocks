# Set Dialogue
data modify storage atomicdrill dialogue append value "There's hope afterall, keep moving!"
data modify storage atomicdrill dialogue append value "You know the drill, get to the living room!"
# Create Marker
execute positioned 10.50 -30.00 12.50 run function gc:states/5_atomic_drill/summon/summon_waypoint_cross
execute positioned 10.50 -28.00 12.50 run function gc:states/4_setup/place/floorplans/general/summon_waypoint_arrow