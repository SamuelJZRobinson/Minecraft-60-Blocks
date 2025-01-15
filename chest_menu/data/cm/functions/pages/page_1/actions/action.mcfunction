# Notes
  # Page 1 is feeding menu
  # Scores must be modified in the menu first to avoid miscalculations

# Debounce Menu
scoreboard players set bool MenuMain 1

# Managed by page1/items (Count supplies > toggle character feeding > Count supplies)

# Mass Items
function cm:pages/page_1/actions/action_mass_food

# Character Selection
execute if score alive TedStatus matches 1 unless score characterSent MenuExplore matches 1 run function cm:pages/page_1/actions/action_ted
execute if score alive DoloresStatus matches 1 unless score characterSent MenuExplore matches 2 run function cm:pages/page_1/actions/action_dolores
execute if score alive MaryStatus matches 1 unless score characterSent MenuExplore matches 3 run function cm:pages/page_1/actions/action_mary
execute if score alive TimmyStatus matches 1 unless score characterSent MenuExplore matches 4 run function cm:pages/page_1/actions/action_timmy

# Page Buttons
  # Previous Page
  execute if score selection MenuMain matches 2 run scoreboard players set @s MenuMain 0
  # Next Page
  execute unless score task AtomicDrill matches 1..12 if score selection MenuMain matches 1 run scoreboard players set @s MenuMain 2
  # Submit
  execute if score selection MenuMain matches 3 run function cm:pages/submit/manage_submit
  # Play Click Sound
  execute if score selection MenuMain matches 1..3 run function mc:sounds/page_turn
  execute if score selection MenuMain matches 4.. run function mc:sounds/menu_click