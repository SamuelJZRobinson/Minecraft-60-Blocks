# Set Dialogue
data modify storage atomicdrill dialogue append value "There is hope afterall, keep those legs moving!"
data modify storage atomicdrill dialogue append value "Once more, you know the drill. Marker. Living room. Get going!"
# Create Marker
execute positioned 13.50 64.00 5.50 run function mc:states/5_atomic_drill/summon_waypoint_cross
execute positioned 13.50 66.00 5.50 run function mc:states/4_setup/place/floorplans/general/summon_waypoint_arrow