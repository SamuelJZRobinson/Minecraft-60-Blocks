execute if score gamemode Settings matches 1 run data merge block 21 131 7 {Text2:'{"text":"","color":"red"}'}
execute if score gamemode Settings matches 2.. if score difficulty Settings matches 1 run data merge block 21 131 7 {Text2:'{"text":"Easy","color":"red"}'}
execute if score gamemode Settings matches 2.. if score difficulty Settings matches 2 run data merge block 21 131 7 {Text2:'{"text":"Medium","color":"red"}'}
execute if score gamemode Settings matches 2.. if score difficulty Settings matches 3 run data merge block 21 131 7 {Text2:'{"text":"Hard","color":"red"}'}
schedule function mc:states/stages/2_lobby/clone/clone_nukes 0.3s replace