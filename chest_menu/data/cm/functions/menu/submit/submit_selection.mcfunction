# Notes
  # Breaking the chest hides the menu
  # giveMedkit is used instead of medkitGiven because there is only one medkit to count

# Feeding
  # Remove Supplies
  scoreboard players operation cans ItemsBunker -= cansGiven ChestMenuFeed
  scoreboard players operation bottles ItemsBunker -= bottlesGiven ChestMenuFeed
  execute if score giveMedkit ChestMenuFeed matches 1.. run scoreboard players set medkit ItemsBunker -1

  # Increment Counters
  scoreboard players operation soupConsumed GameStatus += cansGiven ChestMenuFeed
  scoreboard players operation waterConsumed GameStatus += bottlesGiven ChestMenuFeed

  # Nourish Characters
  execute if score alive DoloresStatus matches 1 run function cm:menu/submit/submit_dolores
  execute if score alive MaryStatus matches 1 run function cm:menu/submit/submit_mary_jane
  execute if score alive TedStatus matches 1 run function cm:menu/submit/submit_ted
  execute if score alive TimmyStatus matches 1 run function cm:menu/submit/submit_timmy

# Erase Bundles
function mc:quit/refresh_bundles

# Expedition
function cm:menu/submit/manage_expedition

# Events
scoreboard players set submit ChestMenuEvent 1
clear @p[team=Playing] minecraft:written_book{dailyStory:1b}
execute if score event ChestMenuEvent matches 1.. as @p[team=Playing] run function cm:menu/page3/manage_events

# Refresh Scoreboard
  # Feeding
  # Characters handled by submit_<name>
  scoreboard players set giveMedkit ChestMenuFeed 0
  scoreboard players set cansGiven ChestMenuFeed 0
  scoreboard players set bottlesGiven ChestMenuFeed 0

  # Expedition (Neighbourhood Default)
  scoreboard players set characterSelect ChestMenuExplore 0
  scoreboard players set locationSelect ChestMenuExplore 3

  # Events
  scoreboard players set event ChestMenuEvent 0
  scoreboard players set choice ChestMenuEvent 0
  scoreboard players set submit ChestMenuEvent 0

  # Math
  scoreboard players set math_out em 0

# Declare New Day
function mc:events/daily/manage_new_day
execute if score task AtomicDrill matches 12.. if score expeditionMode Lobby matches 0 run scoreboard players set stage AtomicDrill 2
execute if score task AtomicDrill matches 12.. if score expeditionMode Lobby matches 1 unless score task AtomicDrill matches 15 run scoreboard players set stage AtomicDrill 2