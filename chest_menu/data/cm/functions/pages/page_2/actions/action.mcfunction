# Notes
  # Page 2 is expedition menu

# Debounce Menu
scoreboard players set bool chest_menu 1

# Character Toggle
  # Dolores
  execute if score selection ChestMenuMain matches 4 run scoreboard players set characterSelect ChestMenuExplore 1
  execute if score selection ChestMenuMain matches 5 run scoreboard players set characterSelect ChestMenuExplore 0
  # Mary
    # Normal
    execute if score selection ChestMenuMain matches 6 if score mutated MaryStatus matches 0 run scoreboard players set characterSelect ChestMenuExplore 2
    execute if score selection ChestMenuMain matches 7 if score mutated MaryStatus matches 0 run scoreboard players set characterSelect ChestMenuExplore 0
    # Mutant
    execute if score selection ChestMenuMain matches 6 if score mutated MaryStatus matches 1 run scoreboard players set characterSelect ChestMenuExplore 3
    execute if score selection ChestMenuMain matches 7 if score mutated MaryStatus matches 1 run scoreboard players set characterSelect ChestMenuExplore 0
  # Ted
  execute if score selection ChestMenuMain matches 8 run scoreboard players set characterSelect ChestMenuExplore 4
  execute if score selection ChestMenuMain matches 9 run scoreboard players set characterSelect ChestMenuExplore 0
  # Timmy
  execute if score selection ChestMenuMain matches 10 run scoreboard players set characterSelect ChestMenuExplore 5
  execute if score selection ChestMenuMain matches 11 run scoreboard players set characterSelect ChestMenuExplore 0

# Map Choice
execute if score selection ChestMenuMain matches 12 run scoreboard players set locationSelect ChestMenuExplore 1
execute if score selection ChestMenuMain matches 13 run scoreboard players set locationSelect ChestMenuExplore 2
execute if score selection ChestMenuMain matches 14 run scoreboard players set locationSelect ChestMenuExplore 3
execute if score selection ChestMenuMain matches 15 run scoreboard players set locationSelect ChestMenuExplore 4
execute if score selection ChestMenuMain matches 16 run scoreboard players set locationSelect ChestMenuExplore 5
execute if score selection ChestMenuMain matches 17 run scoreboard players set locationSelect ChestMenuExplore 6
execute if score selection ChestMenuMain matches 18 run scoreboard players set locationSelect ChestMenuExplore 7
execute if score selection ChestMenuMain matches 19 run scoreboard players set locationSelect ChestMenuExplore 8

# Increment Slots
execute if score selection ChestMenuMain matches 20 run scoreboard players add slotOne ChestMenuExplore 1
execute if score selection ChestMenuMain matches 21 run scoreboard players add slotTwo ChestMenuExplore 1
execute if score selection ChestMenuMain matches 22 run scoreboard players add slotThree ChestMenuExplore 1
execute if score selection ChestMenuMain matches 23 run scoreboard players add slotFour ChestMenuExplore 1

# Prepare Expedition Toggle
execute if score selection ChestMenuMain matches 24 run scoreboard players set prepare ChestMenuExplore 0
execute if score selection ChestMenuMain matches 25 run scoreboard players set prepare ChestMenuExplore 1

# Page Buttons
  # Previous Page
  execute if score selection ChestMenuMain matches 2 run scoreboard players set @s ChestMenuMain 1
  # Next Page
  execute if score selection ChestMenuMain matches 1 run scoreboard players set @s ChestMenuMain 3
  # Submit
  execute if score selection ChestMenuMain matches 3 run function cm:pages/submit/manage_submit
  # Play Click Sound
  execute if score selection ChestMenuMain matches 1..3 run function mc:sounds/page_turn
  execute if score selection ChestMenuMain matches 4.. run function mc:sounds/menu_click