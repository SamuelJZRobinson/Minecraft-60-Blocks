# Notes
  # bunkerSide includes east (0) and west (1)
  # Endings are supposed to be handled by bunker that then goes to state ending

# Detect Player At Bunker Door
execute if score bunkerSide GameStatus matches 0 store success score survived GameStatus if entity @s[x=33,y=64,z=-10,dx=6,dy=4,dz=6]
execute if score bunkerSide GameStatus matches 1 store success score survived GameStatus if entity @s[x=8,y=64,z=-10,dx=6,dy=4,dz=6]

# Cleanup
function mc:states/stages/1_factory_reset/clear/clear_locations_house

# Blindness
# scoreboard players set blindness GameStatus 2

# Outcome
execute if score gamemode Settings matches 1 run function mc:states/stages/7_scavenge/nuke/give_drill_items
execute if score survived GameStatus matches 1 run function mc:states/stages/7_scavenge/nuke/nuke_safe
execute if score survived GameStatus matches 0 run function mc:states/stages/7_scavenge/nuke/nuke_dead

# Set Clock
### scoreboard players set clock Timer 3

# Unlock Inventory
scoreboard players set lockInventory GameStatus 0