# Set Markers, Clone Structures, And Remember Floorplan
function mc:events/random_loadout/house/floorplans/clone_floorplan1_drill

# Props
execute unless entity @e[type=minecraft:item_frame,tag=calendar] run summon item_frame 21.00 65.50 -19.50 {Facing:5b,Invulnerable:1b,Fixed:1b,Tags:["houseProp","calendar"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:4}}}

# Spawn Markers
execute unless score task AtomicDrill matches 1..9 run function mc:events/random_loadout/house/floorplans/spawn_bunker_marker
execute unless score task AtomicDrill matches 1..9 run schedule function mc:events/random_loadout/house/floorplans/spawn_main_checkers 2t replace
execute unless score task AtomicDrill matches 1..9 run schedule function mc:events/random_loadout/house/floorplans/spawn_floorplan1_checkers 7t replace