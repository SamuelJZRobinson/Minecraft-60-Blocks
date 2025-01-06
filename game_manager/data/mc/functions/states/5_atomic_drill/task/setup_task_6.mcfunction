# Set Dialogue
scoreboard players set dialogue AtomicDrill 10
scoreboard players set dialogueMax AtomicDrill 11
# Create Marker
###execute if score task AtomicDrill matches 6 run scoreboard players set clock Timer 1
function mc:states/4_setup/place/floorplans/general/summon_bunker_indicator