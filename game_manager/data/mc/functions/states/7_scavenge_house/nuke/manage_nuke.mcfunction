# Notes
  # bunkerSide includes east (0) and west (1)

# Play Nuke Sound
function mc:sounds/nuke_explosion

# Detect Player At Bunker Door
execute if score bunkerSide GameStatus matches 0 store success score nukeSurvived GameStatus if entity @s[x=33,y=64,z=-10,dx=6,dy=4,dz=6]
execute if score bunkerSide GameStatus matches 1 store success score nukeSurvived GameStatus if entity @s[x=8,y=64,z=-10,dx=6,dy=4,dz=6]

# Cleanup
function mc:states/1_factory_reset/clear/clear_locations_house


# Outcome
execute if score gamemode Settings matches 1 run function mc:states/7_scavenge_house/nuke/give_drill_items
execute if score nukeSurvived GameStatus matches 1 run function mc:states/7_scavenge_house/nuke/nuke_safe
execute if score nukeSurvived GameStatus matches 0 run function mc:states/7_scavenge_house/nuke/nuke_dead

# Unlock Inventory
scoreboard players set mode PlayerLockInventory 0