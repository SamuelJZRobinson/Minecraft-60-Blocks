# Item
summon item_frame ~ ~2 ~ {Facing:3b,Invulnerable:1b,Fixed:1b,Tags:["deleteItemFrame","bunkerItem","map","mapCorner1"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":0}}}
summon item_frame ~1 ~1 ~ {Facing:3b,Invulnerable:1b,Fixed:1b,Tags:["deleteItemFrame","bunkerItem","map","mapCorner4"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":3}}}
# Hitbox
summon interaction ~0.5 ~1 ~-1 {width:2f,height:2f,Tags:["bunkerHitbox","map","hitboxMap"]}
# Label
summon armor_stand ~0.5 ~1.5 ~ {CustomNameVisible:0b,Team:"ItemsDisplay",NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerStatus","map","bunkerTitle"],DisabledSlots:4144959,CustomName:'{"color":"white","text":"Map"}'}