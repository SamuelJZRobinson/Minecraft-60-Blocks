# Set Dialogue
data modify storage atomicdrill dialogue append value "Stop struggling and salvage that equipment!"
data modify storage atomicdrill dialogue append value "Head to the shelter to secure your family and supplies."
# Create Marker
###execute if score task AtomicDrill matches 6 run scoreboard players set clock Timer 1
function gc:states/4_setup/place/floorplans/general/summon_bunker_indicator