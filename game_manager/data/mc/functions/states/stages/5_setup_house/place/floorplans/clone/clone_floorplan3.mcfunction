# Set Markers
scoreboard players set bunkerSide GameStatus 1

# Clone Structures
  # Triple Rooms
  execute unless score floorplan GameStatus matches 3 run clone 3 6 28 -23 1 17 9 63 -23 replace normal
  # Hallway
  execute unless score floorplan GameStatus matches 3 run clone 42 6 28 5 1 20 5 63 -11 replace normal
  # Double Rooms
  execute unless score floorplan GameStatus matches 3 run clone 65 6 28 44 1 17 9 63 -2 replace normal

# Props
execute unless entity @e[type=minecraft:item_frame,tag=calendar] run summon item_frame 19.00 65.40 4.50 {Facing:4b,Invulnerable:1b,Fixed:1b,Tags:["houseProp","calendar"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:4}}}

# Spawn Markers
function mc:states/stages/5_setup_house/place/floorplans/spawn/spawn_bunker_indicator
schedule function mc:states/stages/5_setup_house/place/floorplans/spawn/spawn_main_checkers 2t replace
schedule function mc:states/stages/5_setup_house/place/floorplans/spawn/spawn_floorplan3_checkers 7t replace

# Remember Floorplan
scoreboard players operation floorplan GameStatus = math_out em