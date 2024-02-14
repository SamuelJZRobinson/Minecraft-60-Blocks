# Notes
  # Version 0.84

# Remove Status Text
  # Refresh Scores
  scoreboard players set fatigued MaryStatus 0
  scoreboard players set injured MaryStatus 0
  scoreboard players set injuredLevel MaryStatus 0
  scoreboard players operation infection MaryStatus = INFECTION_MAX StatusLevels
  scoreboard players set crazy MaryStatus 0
  scoreboard players set soupLevel MaryStatus 0
  scoreboard players set sick MaryStatus 0
  scoreboard players operation water MaryStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel MaryStatus 0
  scoreboard players set tired MaryStatus 0
  # Kill Text
  kill @e[x=2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=!maryMutated,tag=!maryNametag]

# Set Mutant Head
data modify entity @s ArmorItems[3] set value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:28}}
tag @s add mutantChange