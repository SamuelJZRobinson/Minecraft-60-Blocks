# Kill Armor Stands Not Riding Magma Slimes
execute as @e[type=armor_stand,tag=deathDetector] at @s unless entity @e[type=minecraft:slime,distance=..0.6,tag=scavengeItem] run kill @s
kill @e[type=minecraft:experience_orb]

# Instant Item Pickup
execute as @e[type=minecraft:item,tag=!fastPickup] run data modify entity @s PickupDelay set value 0
tag @e[type=item] add fastPickup

# Inventory Full Warning
execute if score gameState GameStatus matches 5..7 run function gc:states/7_scavenge_house/items/collect/get_hotbar_full_slots

# Items Left
execute if score gameState GameStatus matches 9 unless score seconds TimerCountdown <= COUNTDOWN_SECONDS_START TimerCountdownSettings if score seconds TimerCountdown matches 0.. run function gc:states/9_expedition/items/show/show_items_left

# Open Salvage Crate
  # Has Items
  execute if score fullSlots GameStatus matches 1.. as @p[team=Player,scores={OpenShulkerBox=1..}] run function gc:states/7_scavenge_house/items/collect/open_salvage_crate
  # No Items
  execute if score fullSlots GameStatus matches 0 as @p[team=Player,scores={OpenShulkerBox=1..}] run function gc:states/7_scavenge_house/items/collect/close_salvage_crate
  execute if score fullSlots GameStatus matches 0 as @p[team=Player,scores={OpenShulkerBox=1..}] run scoreboard players reset @s OpenShulkerBox