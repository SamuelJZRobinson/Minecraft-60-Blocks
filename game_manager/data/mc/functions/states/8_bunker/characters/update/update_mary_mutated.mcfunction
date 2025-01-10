# Refresh Scores
scoreboard players set isFatigued MaryStatus 0
scoreboard players set isInjured MaryStatus 0
scoreboard players operation infection MaryStatus = INFECTION_MAX StatusLevels
scoreboard players set isCrazy MaryStatus 0
scoreboard players set isSick MaryStatus 0
scoreboard players operation water MaryStatus = THIRST_MAX StatusLevels
scoreboard players set isTired MaryStatus 0

# Constants
data modify storage minecraft:math x set value 1

# Check Status
  # Hunger
  function mc:states/8_bunker/characters/update/update_character_hunger with storage updatecharacters objective