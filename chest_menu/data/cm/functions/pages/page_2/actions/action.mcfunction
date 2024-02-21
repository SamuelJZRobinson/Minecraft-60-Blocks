# Notes
  # Page 2 is expedition menu

# Debounce Menu
scoreboard players set bool chest_menu 1

# Character Toggle
  # Dolores
  execute if score selection MenuMain matches 4 run scoreboard players set characterSelect MenuExplore 1
  execute if score selection MenuMain matches 5 run scoreboard players set characterSelect MenuExplore 0
  # Mary
    # Normal
    execute if score selection MenuMain matches 6 if score mutated MaryStatus matches 0 run scoreboard players set characterSelect MenuExplore 2
    execute if score selection MenuMain matches 7 if score mutated MaryStatus matches 0 run scoreboard players set characterSelect MenuExplore 0
    # Mutant
    execute if score selection MenuMain matches 6 if score mutated MaryStatus matches 1 run scoreboard players set characterSelect MenuExplore 3
    execute if score selection MenuMain matches 7 if score mutated MaryStatus matches 1 run scoreboard players set characterSelect MenuExplore 0
  # Ted
  execute if score selection MenuMain matches 8 run scoreboard players set characterSelect MenuExplore 4
  execute if score selection MenuMain matches 9 run scoreboard players set characterSelect MenuExplore 0
  # Timmy
  execute if score selection MenuMain matches 10 run scoreboard players set characterSelect MenuExplore 5
  execute if score selection MenuMain matches 11 run scoreboard players set characterSelect MenuExplore 0

# Map Choice
execute if score selection MenuMain matches 12 run scoreboard players set mapSelect MenuExplore 1
execute if score selection MenuMain matches 13 run scoreboard players set mapSelect MenuExplore 2
execute if score selection MenuMain matches 14 run scoreboard players set mapSelect MenuExplore 3
execute if score selection MenuMain matches 15 run scoreboard players set mapSelect MenuExplore 4
execute if score selection MenuMain matches 16 run scoreboard players set mapSelect MenuExplore 5
execute if score selection MenuMain matches 17 run scoreboard players set mapSelect MenuExplore 6
execute if score selection MenuMain matches 18 run scoreboard players set mapSelect MenuExplore 7
execute if score selection MenuMain matches 19 run scoreboard players set mapSelect MenuExplore 8

# Increment Slots
execute if score selection MenuMain matches 20 run scoreboard players add slotOne MenuExplore 1
execute if score selection MenuMain matches 21 run scoreboard players add slotTwo MenuExplore 1
execute if score selection MenuMain matches 22 run scoreboard players add slotThree MenuExplore 1
execute if score selection MenuMain matches 23 run scoreboard players add slotFour MenuExplore 1

# Prepare Expedition Toggle
execute if score selection MenuMain matches 24 run scoreboard players set prepareExpedition MenuExplore 0
execute if score selection MenuMain matches 25 run scoreboard players set prepareExpedition MenuExplore 1

# Page Buttons
  # Previous Page
  execute if score selection MenuMain matches 2 run scoreboard players set @s MenuMain 1
  # Next Page
  execute if score selection MenuMain matches 1 run scoreboard players set @s MenuMain 3
  # Submit
  execute if score selection MenuMain matches 3 run function cm:pages/submit/manage_submit
  # Play Click Sound
  execute if score selection MenuMain matches 1..3 run function mc:sounds/page_turn
  execute if score selection MenuMain matches 4.. run function mc:sounds/menu_click