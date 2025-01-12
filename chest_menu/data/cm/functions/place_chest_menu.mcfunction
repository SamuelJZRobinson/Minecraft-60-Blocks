# Init Menu
scoreboard players set @p[team=Player] MenuMain 0

# Place Chest
setblock -8 -48 -9 air replace
setblock -8 -48 -9 chest[facing=south] destroy

# Summon Label
execute unless entity @e[type=minecraft:armor_stand,tag=menuText] run summon armor_stand 0.50 55.00 29.50 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerMarker","menuText"],DisabledSlots:4144959,CustomName:'{"text":"Menu","color":"white","bold":true}'}