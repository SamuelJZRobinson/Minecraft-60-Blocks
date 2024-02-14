# Set Markers
scoreboard players set bunkerSide GameStatus 1

# Clone Structures
  # Triple Rooms
  execute unless score preFloorplan GameStatus matches 2 run clone 3 6 41 -23 1 30 9 63 -23 replace normal
  # Hallway
  execute unless score preFloorplan GameStatus matches 2 run clone 42 6 41 5 1 33 5 63 -11 replace normal
  # Double Rooms
  execute unless score preFloorplan GameStatus matches 2 run clone 65 6 41 44 1 30 9 63 -2 replace normal

# Props
execute unless entity @e[type=minecraft:item_frame,tag=calendar] run summon item_frame 30.00 65.50 -16.50 {Facing:5b,Invulnerable:1b,Fixed:1b,Tags:["houseProp","calendar"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:4}}}

# Spawn Markers
function mc:states/stages/4_setup/place/floorplans/spawn/spawn_bunker_indicator
schedule function mc:states/stages/4_setup/place/floorplans/spawn/spawn_main_checkers 1t replace
schedule function mc:states/stages/4_setup/place/floorplans/spawn/spawn_floorplan_2_checkers 6t replace

# Remember Floorplan
scoreboard players set preFloorplan GameStatus 2