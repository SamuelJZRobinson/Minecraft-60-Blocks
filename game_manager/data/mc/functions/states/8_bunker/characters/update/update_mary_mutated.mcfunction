# Refresh Scores
scoreboard players set fatigued MaryStatus 0
scoreboard players set injured MaryStatus 0
scoreboard players set injuredLevel MaryStatus 0
scoreboard players operation infection MaryStatus = INFECTION_MAX StatusLevels
scoreboard players set crazy MaryStatus 0
scoreboard players set sick MaryStatus 0
scoreboard players operation water MaryStatus = THIRST_MAX StatusLevels
scoreboard players set waterLevel MaryStatus 0
scoreboard players set tired MaryStatus 0

# Constants
data modify storage minecraft:math x set value 1

# Check Status
  # Hunger
  function mc:states/8_bunker/characters/update/update_character_hunger with storage updatecharacters objective