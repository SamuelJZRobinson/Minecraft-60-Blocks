# Set Markers
scoreboard players set bunkerSide GameStatus 0

# Clone Structures
  # Triple Rooms
  execute unless score preFloorplan GameStatus matches 5 run clone 3 6 2 -23 1 -9 9 63 -23 replace normal
  # Hallway
  execute unless score preFloorplan GameStatus matches 5 run clone 42 6 2 5 1 -6 5 63 -11 replace normal
  # Double Rooms
  execute unless score preFloorplan GameStatus matches 5 run clone 65 6 2 44 1 -9 9 63 -2 replace normal

# Props
execute unless entity @e[type=minecraft:item_frame,tag=calendar] run summon item_frame 28.00 65.50 3.50 {Facing:4b,Invulnerable:1b,Fixed:1b,Tags:["houseProp","calendar"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:4}}}

# Spawn Markers
function mc:states/stages/4_setup/place/floorplans/spawn/spawn_bunker_indicator
schedule function mc:states/stages/4_setup/place/floorplans/spawn/spawn_main_checkers 2t replace
schedule function mc:states/stages/4_setup/place/floorplans/spawn/spawn_floorplan_5_checkers 7t replace

# Remember Floorplan
scoreboard players set preFloorplan GameStatus 5