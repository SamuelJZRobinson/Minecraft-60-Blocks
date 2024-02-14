# Notes
  ### You click the journal to transition to the surface scene
  # The player cannot be a spectator since they do not load chunks

# Player Related
scoreboard players set blindness GameStatus 3
function mc:utility/tp/tp_bunker
# Destroy Bunker Labels
kill @e[type=armor_stand,tag=bunkerMarker]
kill @e[type=armor_stand,tag=bunkerStatus]
kill @e[type=armor_stand,tag=bunkerCount]
kill @e[type=area_effect_cloud,tag=bunkerHitbox]
# Titles
title @a times 20 20 20
title @a title {"text":"THE END","color":"white"}
# Scavenge Item Count
execute if score gameMode Lobby matches 3 run title @p[team=Playing] subtitle [{"text":"Items Collected: "},{"score":{"name":"itemCount","objective":"AtomicDrill"}}]

# Change To Surface Scene # 
schedule function mc:events/endings/transition_scene 5s replace