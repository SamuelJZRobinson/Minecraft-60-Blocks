# Set Markers
scoreboard players set bunkerSide GameStatus 1

# Clone Structures
  # Triple Rooms
  execute unless score preFloorplan GameStatus matches 1 run clone 3 6 54 -23 1 43 9 63 -23 replace normal
  # Hallway
  execute unless score preFloorplan GameStatus matches 1 run clone 42 6 54 5 1 46 5 63 -11 replace normal
  # Double Rooms
  execute unless score preFloorplan GameStatus matches 1 run clone 65 6 54 44 1 43 9 63 -2 replace normal

# Props
execute unless entity @e[type=minecraft:item_frame,tag=calendar] run summon item_frame 21.00 65.50 -19.50 {Facing:5b,Invulnerable:1b,Fixed:1b,Tags:["house","houseProp","calendar"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:4}}}