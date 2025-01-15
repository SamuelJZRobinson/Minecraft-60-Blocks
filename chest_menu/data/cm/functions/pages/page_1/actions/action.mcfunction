# Notes
  # Page 1 is feeding menu
  # Scores must be modified in the menu first to avoid miscalculations

# Debounce Menu
scoreboard players set bool MenuMain 1

# Managed by page1/items (Count supplies > toggle character feeding > Count supplies)

# Mass Items
  # Soup
  execute if score selection MenuMain matches 37 if score alive TedStatus matches 1 unless score characterSent MenuExplore matches 4 run scoreboard players set tedGiveSoup MenuFeed 1
  execute if score selection MenuMain matches 37 if score alive DoloresStatus matches 1 unless score characterSent MenuExplore matches 1 run scoreboard players set doloresGiveSoup MenuFeed 1
  execute if score selection MenuMain matches 37 if score alive MaryStatus matches 1 unless score characterSent MenuExplore matches 2..3 run scoreboard players set maryGiveSoup MenuFeed 1
  execute if score selection MenuMain matches 37 if score alive TimmyStatus matches 1 unless score characterSent MenuExplore matches 5 run scoreboard players set timmyGiveSoup MenuFeed 1
  execute if score selection MenuMain matches 38 run scoreboard players set doloresGiveSoup MenuFeed 0
  execute if score selection MenuMain matches 38 run scoreboard players set maryGiveSoup MenuFeed 0
  execute if score selection MenuMain matches 38 run scoreboard players set tedGiveSoup MenuFeed 0
  execute if score selection MenuMain matches 38 run scoreboard players set timmyGiveSoup MenuFeed 0
  # Water
  execute if score selection MenuMain matches 39 if score alive TedStatus matches 1 unless score characterSent MenuExplore matches 4 run scoreboard players set tedGiveWater MenuFeed 1
  execute if score selection MenuMain matches 39 if score alive DoloresStatus matches 1 unless score characterSent MenuExplore matches 1 run scoreboard players set doloresGiveWater MenuFeed 1
  execute if score selection MenuMain matches 39 if score alive MaryStatus matches 1 unless score characterSent MenuExplore matches 2..3 run scoreboard players set maryGiveWater MenuFeed 1
  execute if score selection MenuMain matches 39 if score alive TimmyStatus matches 1 unless score characterSent MenuExplore matches 5 run scoreboard players set timmyGiveWater MenuFeed 1
  execute if score selection MenuMain matches 40 run scoreboard players set doloresGiveWater MenuFeed 0
  execute if score selection MenuMain matches 40 run scoreboard players set maryGiveWater MenuFeed 0
  execute if score selection MenuMain matches 40 run scoreboard players set tedGiveWater MenuFeed 0
  execute if score selection MenuMain matches 40 run scoreboard players set timmyGiveWater MenuFeed 0

# Character Selection
execute if score alive TedStatus matches 1 unless score characterSent MenuExplore matches 4 run function cm:pages/page_1/actions/action_ted
execute if score alive DoloresStatus matches 1 unless score characterSent MenuExplore matches 1 run function cm:pages/page_1/actions/action_dolores
execute if score alive MaryStatus matches 1 unless score characterSent MenuExplore matches 2..3 run function cm:pages/page_1/actions/action_mary
execute if score alive TimmyStatus matches 1 unless score characterSent MenuExplore matches 5 run function cm:pages/page_1/actions/action_timmy

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