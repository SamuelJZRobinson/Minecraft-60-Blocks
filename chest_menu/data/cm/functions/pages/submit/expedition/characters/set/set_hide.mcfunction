### Make all character related armour stands have same name tag to target

# Hide Character
  # Dolores
  execute if score characterSent MenuExplore matches 1 run kill @e[type=armor_stand,tag=Dolores]
  # Mary
  execute if score characterSent MenuExplore matches 2..3 run kill @e[type=armor_stand,tag=Mary]
  # Ted
  execute if score characterSent MenuExplore matches 4 run kill @e[type=armor_stand,tag=Ted]
  # Timmy
  execute if score characterSent MenuExplore matches 5 run kill @e[type=armor_stand,tag=Timmy]

# Door Sound
function mc:sounds/bunker_door_1