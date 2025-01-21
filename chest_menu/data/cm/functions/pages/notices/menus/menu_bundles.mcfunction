# Gained
data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{isMenu:1b,page:0,selection:0,display:{Name:'{"text":"Gained","color":"gray","bold":true}'}}}
execute if data storage minecraft:bundles itemsGained run data modify block ~ ~ ~ Items insert 0 from storage minecraft:bundles itemsGained
# Lost
data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{isMenu:1b,page:0,selection:0,display:{Name:'{"text":"Lost","color":"gray","bold":true}'}}}
execute if data storage minecraft:bundles itemsLost run data modify block ~ ~ ~ Items insert 0 from storage minecraft:bundles itemsLost
execute if data storage minecraft:bundles charactersLost run data modify block ~ ~ ~ Items insert 0 from storage minecraft:bundles charactersLost