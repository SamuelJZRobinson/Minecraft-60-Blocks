# Kill Armor Stands Not Riding Magma Slimes
execute as @e[type=armor_stand,tag=scavengeItem] at @s unless entity @e[type=minecraft:slime,distance=..0.6,tag=scavengeItem] run kill @s
kill @e[type=minecraft:experience_orb]

# Instant Item Pickup
execute as @e[type=minecraft:item,tag=!fastPickup] run data modify entity @s PickupDelay set value 0
tag @e[type=item] add fastPickup
teleport @e[type=minecraft:item] @p[Mobsteam=Player]