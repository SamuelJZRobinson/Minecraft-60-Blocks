# Reset Scores
scoreboard players set fullSlots GameStatus 0

# Count Hotbar Items
execute store result score fullSlots GameStatus run clear @p[team=Player] minecraft:saddle 0

# Lock Items
  # Three Slots
  execute if score fullSlots GameStatus matches 2..4 as @e[type=#gc:mob_collectable,team=!ItemsLocked,tag=3Slot] at @s run team join ItemsLocked @s
  execute as @e[type=#gc:mob_collectable,team=ItemsLocked,tag=3Slot] at @s run data modify entity @s Invulnerable set value 1b
  # Two Slots
  execute if score fullSlots GameStatus matches 3..4 as @e[type=#gc:mob_collectable,team=!ItemsLocked,tag=2Slot] at @s run team join ItemsLocked @s
  execute as @e[type=#gc:mob_collectable,team=ItemsLocked,tag=2Slot] at @s run data modify entity @s Invulnerable set value 1b
  # One Slot
  execute if score fullSlots GameStatus matches 4 as @e[type=#gc:mob_collectable,team=!ItemsLocked,tag=1Slot] at @s run team join ItemsLocked @s
  execute as @e[type=#gc:mob_collectable,team=ItemsLocked,tag=1Slot] at @s run data modify entity @s Invulnerable set value 1b

# Title (Skip Atomic Drill Dialogue)
execute unless score gameState GameStatus matches 5 if score fullSlots GameStatus matches 4 run title @p[team=Player] actionbar {"text":"Inventory full!","color":"red","bold":true}