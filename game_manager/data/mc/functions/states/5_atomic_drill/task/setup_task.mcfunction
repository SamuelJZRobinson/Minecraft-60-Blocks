# House
  # Goto Hallway Marker
  execute if score task AtomicDrill matches 1 run function mc:states/5_atomic_drill/task/setup_task_1
  # Goto Living Room Marker
  execute if score task AtomicDrill matches 2 run function mc:states/5_atomic_drill/task/setup_task_2
  # Find Timmy
  execute if score task AtomicDrill matches 3 run function mc:states/5_atomic_drill/task/setup_task_3
  # Find Soup In Bathtub
  execute if score task AtomicDrill matches 4 run function mc:states/5_atomic_drill/task/setup_task_4
  # Find Water In Kitchen
  execute if score task AtomicDrill matches 5 run function mc:states/5_atomic_drill/task/setup_task_5
  # Salvage Items
  execute if score task AtomicDrill matches 6 run function mc:states/5_atomic_drill/task/setup_task_6
  # Find Radio In Living Room Shelf
  execute if score task AtomicDrill matches 7 run function mc:states/5_atomic_drill/task/setup_task_7
  # Find Gas Mask In Hallway
  execute if score task AtomicDrill matches 8 run function mc:states/5_atomic_drill/task/setup_task_8
  # Salvage Items
  execute if score task AtomicDrill matches 9 run function mc:states/5_atomic_drill/task/setup_task_9
  # Scavenge House
  execute if score task AtomicDrill matches 10 run function mc:states/5_atomic_drill/task/setup_task_10

# Bunker
  # Failed To Enter Bunker
  execute if score task AtomicDrill matches 11 run function mc:states/5_atomic_drill/task/setup_task_11
  # Entered Bunker, Feed Characters, Day One
  execute if score task AtomicDrill matches 12 run function mc:states/5_atomic_drill/task/setup_task_12
  # Feed Characters And Plan Expedition, Day Two
  execute if score task AtomicDrill matches 13 run function mc:states/5_atomic_drill/task/setup_task_13
  # Feed Thirsty Characters And Event One, Day Three
  execute if score task AtomicDrill matches 14 run function mc:states/5_atomic_drill/task/setup_task_14
  # Event Two, Day Four
  execute if score task AtomicDrill matches 15 run function mc:states/5_atomic_drill/task/setup_task_15
  # Character Returns Injured, Day Five
  execute if score task AtomicDrill matches 16 run function mc:states/5_atomic_drill/task/setup_task_16
  # Advice About Knocking, Day Six
  execute if score task AtomicDrill matches 17 run function mc:states/5_atomic_drill/task/setup_task_17
  # Advice About Harsh Circumstances, Day Seven
  execute if score task AtomicDrill matches 18 run function mc:states/5_atomic_drill/task/setup_task_18
  # Event Three, Day Eight
  execute if score task AtomicDrill matches 19 run function mc:states/5_atomic_drill/task/setup_task_19
  # Even Four, Day Nine
  execute if score task AtomicDrill matches 20 run function mc:states/5_atomic_drill/task/setup_task_20
  # Final Words And Reset, Day Ten
  execute if score task AtomicDrill matches 21 run function mc:states/5_atomic_drill/task/setup_task_21

# Request Dialogue
execute unless score task AtomicDrill matches 13.. run function mc:states/5_atomic_drill/show/show_dialogue_loop

# Debounce Stage
scoreboard players set stage AtomicDrill 1