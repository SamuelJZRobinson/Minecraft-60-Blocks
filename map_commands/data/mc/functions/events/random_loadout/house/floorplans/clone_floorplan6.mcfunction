# Set Markers
scoreboard players set bunkerSide GameStatus 0

# Clone Structures
  # Triple Rooms
  execute unless score floorplan GameStatus matches 6 run clone 3 6 -11 -23 1 -22 9 63 -23 replace normal
  # Hallway
  execute unless score floorplan GameStatus matches 6 run clone 42 6 -11 5 1 -19 5 63 -11 replace normal
  # Double Rooms
  execute unless score floorplan GameStatus matches 6 run clone 65 6 -11 44 1 -22 9 63 -2 replace normal

# Props
execute unless entity @e[type=minecraft:item_frame,tag=calendar] run summon item_frame 11.00 65.50 0.50 {Facing:5b,Invulnerable:1b,Fixed:1b,Tags:["houseProp","calendar"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:4}}}

# Spawn Markers
function mc:events/random_loadout/house/floorplans/spawn_bunker_marker
schedule function mc:events/random_loadout/house/floorplans/spawn_main_checkers 2t replace
schedule function mc:events/random_loadout/house/floorplans/spawn_floorplan6_checkers 7t replace

# Remember Floorplan
scoreboard players operation floorplan GameStatus = math_out em