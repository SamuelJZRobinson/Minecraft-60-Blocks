# Notes
  # bunkerSide refers to which side of the house the bunker is located, including: 0 (east), and 1 (west)

# Detect Player At Bunker Door
execute if score bunkerSide GameStatus matches 0 store success score survived GameStatus if entity @s[x=33,y=64,z=-10,dx=6,dy=4,dz=6]
execute if score bunkerSide GameStatus matches 1 store success score survived GameStatus if entity @s[x=8,y=64,z=-10,dx=6,dy=4,dz=6]

# Cleanup
function mc:quit/refresh_locations_house

# Give Atomic Drill Items
execute if score gamemode Settings matches 1 run function mc:timers/scavenge/give_atomic_drill_items

# Blindness
scoreboard players set blindness GameStatus 2

# Check Survival
execute if score survived GameStatus matches 1 run function mc:timers/scavenge/detonation_safe
execute if score survived GameStatus matches 0 run function mc:timers/scavenge/detonation_dead

# Set Clock
scoreboard players set clock Timer 3
scoreboard players set lockInventory GameStatus 0