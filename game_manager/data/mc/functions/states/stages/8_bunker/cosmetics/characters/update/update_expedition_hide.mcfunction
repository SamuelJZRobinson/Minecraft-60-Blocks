# Hide Character
  # Dolores
  execute if score characterSent MenuExplore matches 1 run kill @e[type=armor_stand]
  # Mary
  execute if score characterSent MenuExplore matches 2..3 run kill @e[type=armor_stand]
  # Ted
  execute if score characterSent MenuExplore matches 4 run kill @e[type=armor_stand]
  # Timmy
  execute if score characterSent MenuExplore matches 5 run kill @e[type=armor_stand]

# Door Sound
function mc:sounds/bunker_door_1