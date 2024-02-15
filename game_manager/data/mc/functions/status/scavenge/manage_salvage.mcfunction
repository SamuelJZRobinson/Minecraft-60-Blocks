# Kill Armor Stands Not Riding Magma Slimes
execute as @e[type=armor_stand,tag=scavengeItem] at @s unless entity @e[type=minecraft:slime,distance=..0.6,tag=scavengeItem] run kill @s
kill @e[type=minecraft:experience_orb]

# Instant Item Pickup
execute as @e[type=minecraft:item,tag=!processed] run data modify entity @s PickupDelay set value 0
tag @e[type=item] add processed
teleport @e[type=minecraft:item] @p[team=Playing]

# Salvage Crate
execute unless score lockInventory GameStatus matches 3 run function mc:status/scavenge/check_full_slots
execute unless score lockInventory GameStatus matches 3 as @p[team=Playing,scores={OpenShulkerBox=1..}] run function mc:timer/scavenge/open_salvage_crate