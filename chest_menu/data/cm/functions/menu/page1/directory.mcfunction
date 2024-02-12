# Notes
  # Page 1 is feeding menu
  # Scores must be modified in the directory first to avoid miscalculations

# Debounce Menu
scoreboard players set bool ChestMenuMain 1

# Managed by page1/items (Count supplies > toggle character feeding > Count supplies)

# Mass Items
  # Soup
  execute if score selection ChestMenuMain matches 37 if score alive DoloresStatus matches 1 unless score characterSent ChestMenuExplore matches 1 run scoreboard players set doloresGiveCan ChestMenuFeed 1
  execute if score selection ChestMenuMain matches 37 if score alive MaryStatus matches 1 unless score characterSent ChestMenuExplore matches 2..3 run scoreboard players set maryGiveCan ChestMenuFeed 1
  execute if score selection ChestMenuMain matches 37 if score alive TedStatus matches 1 unless score characterSent ChestMenuExplore matches 4 run scoreboard players set tedGiveCan ChestMenuFeed 1
  execute if score selection ChestMenuMain matches 37 if score alive TimmyStatus matches 1 unless score characterSent ChestMenuExplore matches 5 run scoreboard players set timmyGiveCan ChestMenuFeed 1
  execute if score selection ChestMenuMain matches 38 run scoreboard players set doloresGiveCan ChestMenuFeed 0
  execute if score selection ChestMenuMain matches 38 run scoreboard players set maryGiveCan ChestMenuFeed 0
  execute if score selection ChestMenuMain matches 38 run scoreboard players set tedGiveCan ChestMenuFeed 0
  execute if score selection ChestMenuMain matches 38 run scoreboard players set timmyGiveCan ChestMenuFeed 0
  # Water
  execute if score selection ChestMenuMain matches 39 if score alive DoloresStatus matches 1 unless score characterSent ChestMenuExplore matches 1 run scoreboard players set doloresGiveBottle ChestMenuFeed 1
  execute if score selection ChestMenuMain matches 39 if score alive MaryStatus matches 1 unless score characterSent ChestMenuExplore matches 2..3 run scoreboard players set maryGiveBottle ChestMenuFeed 1
  execute if score selection ChestMenuMain matches 39 if score alive TedStatus matches 1 unless score characterSent ChestMenuExplore matches 4 run scoreboard players set tedGiveBottle ChestMenuFeed 1
  execute if score selection ChestMenuMain matches 39 if score alive TimmyStatus matches 1 unless score characterSent ChestMenuExplore matches 5 run scoreboard players set timmyGiveBottle ChestMenuFeed 1
  execute if score selection ChestMenuMain matches 40 run scoreboard players set doloresGiveBottle ChestMenuFeed 0
  execute if score selection ChestMenuMain matches 40 run scoreboard players set maryGiveBottle ChestMenuFeed 0
  execute if score selection ChestMenuMain matches 40 run scoreboard players set tedGiveBottle ChestMenuFeed 0
  execute if score selection ChestMenuMain matches 40 run scoreboard players set timmyGiveBottle ChestMenuFeed 0

# Character Selection
execute if score alive DoloresStatus matches 1 unless score characterSent ChestMenuExplore matches 1 run function cm:menu/page1/directory_dolores
execute if score alive MaryStatus matches 1 unless score characterSent ChestMenuExplore matches 2..3 run function cm:menu/page1/directory_mary
execute if score alive TedStatus matches 1 unless score characterSent ChestMenuExplore matches 4 run function cm:menu/page1/directory_ted
execute if score alive TimmyStatus matches 1 unless score characterSent ChestMenuExplore matches 5 run function cm:menu/page1/directory_timmy

# Page Buttons
  # Previous Page
  execute if score selection ChestMenuMain matches 2 run scoreboard players set @s ChestMenuMain 0
  # Next Page
  execute unless score task AtomicDrill matches 1..12 if score selection ChestMenuMain matches 1 run scoreboard players set @s ChestMenuMain 2
  # Submit
  execute if score selection ChestMenuMain matches 3 run function cm:menu/submit/submit_selection
  # Play Click Sound
  execute if score selection ChestMenuMain matches 1..3 run function mc:events/sounds/page_turn
  execute if score selection ChestMenuMain matches 4.. run function mc:events/sounds/menu_click