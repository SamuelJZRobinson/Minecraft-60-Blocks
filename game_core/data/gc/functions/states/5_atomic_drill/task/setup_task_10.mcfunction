# Set Dialogue
data modify storage atomicdrill dialogue append value "Bravo! Now it's time for a full simulation."
data modify storage atomicdrill dialogue append value "National sirens offer 60 seconds to prepare the shelter."
data modify storage atomicdrill dialogue append value "Stand beside the shelter when your time is up or you're toast!"
# Start House Scavenge
scoreboard players set gameState GameStatus 4
schedule function gc:states/4_setup/setup_gamemode_scavenge 210t replace