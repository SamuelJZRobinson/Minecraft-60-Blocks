# Gained
data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:lime_stained_glass_pane",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"gray","text":"Gained"}',"minecraft:custom_data":{isMenu:1b,page:0,selection:0}}}
execute if data storage minecraft:bundles itemsGained run data modify block ~ ~ ~ Items insert 0 from storage minecraft:bundles itemsGained
execute if data storage minecraft:bundles charactersGained run data modify block ~ ~ ~ Items insert 0 from storage minecraft:bundles charactersGained
# Lost
data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"gray","text":"Lost"}',"minecraft:custom_data":{isMenu:1b,page:0,selection:0}}}
execute if data storage minecraft:bundles itemsLost run data modify block ~ ~ ~ Items insert 0 from storage minecraft:bundles itemsLost
execute if data storage minecraft:bundles charactersLost run data modify block ~ ~ ~ Items insert 0 from storage minecraft:bundles charactersLost