# Notes
  # open_salvage_crate makes mobs collectable again.
  # Inventory capacity title should not overwrite Atomic Drill dialogue.
  # Armourstands display custom models with glowing outlines and ride slimes that offer a hitbox and item loot.
  # Slimes are not designed to equip items with custom models.

# Set Score
scoreboard players set fullSlots GameStatus 0

# Remove Effects
# execute as @p[team=Playing,nbt={ActiveEffects:[{Id:18b}]}] if score fullSlots GameStatus matches ..3 run effect clear @s weakness

# Check Hotbar Slots 0 to 3
execute store result score fullSlots GameStatus run clear @p[team=Playing] minecraft:saddle 0

# Lock Items
  # Three Slots
  execute if score fullSlots GameStatus matches 2..4 as @e[type=#mc:mob_slot_limit,team=!NoRoom,tag=threeSlots] at @s run team join NoRoom @s
  execute as @e[type=#mc:mob_slot_limit,team=NoRoom,tag=threeSlots,nbt={Invulnerable:0b}] at @s run data modify entity @s Invulnerable set value 1b
  # Two Slots
  execute if score fullSlots GameStatus matches 3..4 as @e[type=#mc:mob_slot_limit,team=!NoRoom,tag=twoSlots] at @s run team join NoRoom @s
  execute as @e[type=#mc:mob_slot_limit,team=NoRoom,tag=twoSlots,nbt={Invulnerable:0b}] at @s run data modify entity @s Invulnerable set value 1b
  # One Slot
  execute if score fullSlots GameStatus matches 4 as @e[type=#mc:mob_slot_limit,team=!NoRoom,tag=oneSlot] at @s run team join NoRoom @s
  execute as @e[type=#mc:mob_slot_limit,team=NoRoom,tag=oneSlot,nbt={Invulnerable:0b}] at @s run data modify entity @s Invulnerable set value 1b
  # Assign Armourstands To NoRoom Team
  execute as @e[type=minecraft:armor_stand,tag=scavengeItem,team=!NoRoom] at @s if entity @e[type=minecraft:slime,team=NoRoom,limit=1,sort=nearest,distance=..1] run team join NoRoom @s

# Title
execute unless score task AtomicDrill matches 1..6 if score fullSlots GameStatus matches 4 run title @p[team=Playing] actionbar {"text":"Inventory full!","color":"red","bold":true}