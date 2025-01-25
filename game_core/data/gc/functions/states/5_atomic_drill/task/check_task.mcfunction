# Notes
  # check_salvage_hopper counts items for the salvage tasks.

# Complete Tasks
  # Task 1 (Goto Hallway Marker)
  execute if score task AtomicDrill matches 1 at @p[team=Player] if entity @e[type=minecraft:armor_stand,tag=markerCross,distance=..2] run scoreboard players set step AtomicDrill 2
  
  # Task 2 (Goto Living Room Marker)
  execute if score task AtomicDrill matches 2 at @p[team=Player] if entity @e[type=minecraft:armor_stand,tag=markerCross,distance=..2] run scoreboard players set step AtomicDrill 2
  
  # Task 3 (Find Timmy)
  execute if score task AtomicDrill matches 3 if entity @p[team=Player,nbt={Inventory:[{components:{"minecraft:custom_data":{itemId:22}}}]}] run scoreboard players set step AtomicDrill 2
  
  # Task 4 (Find Soup In Bathtub)
  execute if score task AtomicDrill matches 4 if entity @p[team=Player,nbt={Inventory:[{components:{"minecraft:custom_data":{itemId:15}}}]}] run scoreboard players set step AtomicDrill 2
  
  # Task 5 (Find Water In Kitchen)
  execute if score task AtomicDrill matches 5 if entity @p[team=Player,nbt={Inventory:[{components:{"minecraft:custom_data":{itemId:17}}}]}] run scoreboard players set step AtomicDrill 2
  
  # Task 6 (Salvage Items)
  execute if score task AtomicDrill matches 6 if score itemCount AtomicDrill matches 4.. run scoreboard players set step AtomicDrill 2
  execute if score task AtomicDrill matches 6 if score itemCount AtomicDrill matches 4.. run scoreboard players set itemCount AtomicDrill 0
  
  # Task 7 (Find Radio In Living Room)
  execute if score task AtomicDrill matches 7 if entity @p[team=Player,nbt={Inventory:[{components:{"minecraft:custom_data":{itemId:14}}}]}] run scoreboard players set step AtomicDrill 2
  
  # Task 8 (Find Gas Mask In Hallway)
  execute if score task AtomicDrill matches 8 if entity @p[team=Player,nbt={Inventory:[{components:{"minecraft:custom_data":{itemId:8}}}]}] run scoreboard players set step AtomicDrill 2
  
  # Task 9 (Salvage Items)
  execute if score task AtomicDrill matches 9 if score itemCount AtomicDrill matches 2.. run scoreboard players set step AtomicDrill 2
  execute if score task AtomicDrill matches 9 if score itemCount AtomicDrill matches 2.. run scoreboard players set itemCount AtomicDrill 0
  
  # Task 10 (Scavenge House)
  # Managed By gc:utility/scavenge/manage_survival

  # Task 11 (Failed To Enter Bunker)
  # Managed By gc:utility/scavenge/manage_survival and gc:play/atomic_drill/show/show_dialogue_loop_show
  
  # Task 12 To 21
  # Managed By cm:menu/submit/submit_selection