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
execute if score gameState GameStatus matches 9 if score itemsLeft ItemsExpedition matches 0 if score step ItemsExpedition matches 12.. as @p[team=Player,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{gotoBunker:1b}}}]}] run function gc:states/7_scavenge_house/items/collect/give_goto_bunker_tool
execute if score gameState GameStatus matches 9 if score itemsLeft ItemsExpedition matches 1.. if score step ItemsExpedition matches 12.. run clear @p[team=Player] carrot_on_a_stick[minecraft:custom_data={gotoBunker:1b}]

# Open Salvage Crate
  # Has Items
  execute if score fullSlots GameStatus matches 1.. as @p[team=Player,scores={OpenShulkerBox=1..}] run function gc:states/7_scavenge_house/items/collect/open_salvage_crate
  # No Items
  execute if score fullSlots GameStatus matches 0 as @p[team=Player,scores={OpenShulkerBox=1..}] run function gc:states/7_scavenge_house/items/collect/close_salvage_crate
  execute if score fullSlots GameStatus matches 0 as @p[team=Player,scores={OpenShulkerBox=1..}] run scoreboard players reset @s OpenShulkerBox