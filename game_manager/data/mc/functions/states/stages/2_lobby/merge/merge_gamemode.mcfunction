# Notes
  # The delay before cloning nukes prevents the risk of seizures and unnecessary computations

execute if score gamemode Settings matches 1 run data merge block 22 131 7 {Text2:'{"text":"Atomic Drill","color":"red"}'}
execute if score gamemode Settings matches 2 run data merge block 22 131 7 {Text2:'{"text":"Apocalypse","color":"red"}'}
execute if score gamemode Settings matches 3 run data merge block 22 131 7 {Text2:'{"text":"Scavenge","color":"red"}'}
execute if score gamemode Settings matches 4 run data merge block 22 131 7 {Text2:'{"text":"Survival","color":"red"}'}
schedule function mc:states/stages/2_lobby/clone/clone_nukes 0.3s replace
function mc:states/stages/2_lobby/merge/merge_difficulty