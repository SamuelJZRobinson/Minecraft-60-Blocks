# Set Dialogue
data modify storage atomicdrill dialogue append value "Bravo! Now it's time to apply your skills in a full simulation."
data modify storage atomicdrill dialogue append value "Sometimes you have extra time to wander, but you must pack after the siren!"
data modify storage atomicdrill dialogue append value "Our warning system provides sixty seconds to gather items and family."
data modify storage atomicdrill dialogue append value "Remember to stand beside the shelter when your time is up!"
# Start House Scavenge
scoreboard players set state GameStatus 4
schedule function mc:states/4_setup/setup_gamemode_scavenge 280t replace