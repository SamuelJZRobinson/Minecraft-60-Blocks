# Item
summon armor_stand 3.00 55.69 35.50 {CustomNameVisible:0b,Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerStatus","map","bunkerTitle"],DisabledSlots:4144959,CustomName:'{"text":"Map"}'}
summon minecraft:item_frame 3 56 35 {Facing:2b,Invulnerable:1b,Fixed:1b,Tags:["deleteItemFrame","bunkerItem","map","mapCorner1"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:0}}}
summon minecraft:item_frame 2 56 35 {Facing:2b,Invulnerable:1b,Fixed:1b,Tags:["deleteItemFrame","bunkerItem","map","mapCorner2","mapBreak"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:1}}}
summon minecraft:item_frame 3 55 35 {Facing:2b,Invulnerable:1b,Fixed:1b,Tags:["deleteItemFrame","bunkerItem","map","mapCorner3","mapBreak"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:2}}}
summon minecraft:item_frame 2 55 35 {Facing:2b,Invulnerable:1b,Fixed:1b,Tags:["deleteItemFrame","bunkerItem","map","mapCorner4"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:3}}}
# Hitbox
function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_map