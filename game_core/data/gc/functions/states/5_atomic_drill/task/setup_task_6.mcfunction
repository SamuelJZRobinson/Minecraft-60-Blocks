# Set Dialogue
data modify storage atomicdrill dialogue append value "Stop clambering with that burden and salvage it!"
data modify storage atomicdrill dialogue append value "Head to the shelter to keep your family and supplies safe."
# Create Marker
###execute if score task AtomicDrill matches 6 run scoreboard players set clock Timer 1
function gc:states/4_setup/place/floorplans/general/summon_bunker_indicator