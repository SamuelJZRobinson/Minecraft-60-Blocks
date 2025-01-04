# Note
  # Setblock air forcibly closes the inventory GUI.

# Place Chest
setblock 0 54 29 air replace
setblock 0 54 29 chest[facing=north] keep
execute unless entity @e[type=minecraft:armor_stand,tag=menuText] run summon armor_stand 0.50 55.00 29.50 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerMarker","menuText"],DisabledSlots:4144959,CustomName:'{"text":"Menu","color":"white","bold":true}'}

# Rename Chest
data merge block 1 60 33 {Text1:'{"text":"Day:"}',Text2:'[{"text":"Day "},{"score":{"name":"day","objective":"GameStatus"}}]'}
data modify block 0 54 29 CustomName set from block 1 60 33 Text2