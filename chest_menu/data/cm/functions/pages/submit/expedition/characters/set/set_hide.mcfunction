### Make all character related armour stands have same name tag to target

# Hide Character And Status
  # Dolores
  execute if score characterSent MenuExplore matches 1 run kill @e[type=armor_stand,tag=dolores]
  # Mary
  execute if score characterSent MenuExplore matches 2..3 run kill @e[type=armor_stand,tag=mary]
  # Ted
  execute if score characterSent MenuExplore matches 4 run kill @e[type=armor_stand,tag=ted]
  # Timmy
  execute if score characterSent MenuExplore matches 5 run kill @e[type=armor_stand,tag=timmy]

# Door Sound
function mc:sounds/bunker_door_1