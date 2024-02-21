# Notes
  # Breaking the chest hides the menu
  # giveMedkit is used instead of medkitGiven because there is only one medkit to count

# Feeding
  # Remove Supplies
  scoreboard players operation cans ItemsBunker -= cansGiven MenuFeed
  scoreboard players operation bottles ItemsBunker -= bottlesGiven MenuFeed
  execute if score giveMedkit MenuFeed matches 1.. run scoreboard players set medkit ItemsBunker -1

  # Increment Counters
  scoreboard players operation soupConsumed GameStatus += cansGiven MenuFeed
  scoreboard players operation waterConsumed GameStatus += bottlesGiven MenuFeed

  # Nourish Characters
  execute if score alive DoloresStatus matches 1 run function cm:pages/submit/submit_dolores
  execute if score alive MaryStatus matches 1 run function cm:pages/submit/submit_mary_jane
  execute if score alive TedStatus matches 1 run function cm:pages/submit/submit_ted
  execute if score alive TimmyStatus matches 1 run function cm:pages/submit/submit_timmy

# Erase Bundles
function mc:states/stages/1_factory_reset/set/set_bundles

# Expedition
function cm:pages/submit/manage_expedition

# Events
scoreboard players set submit MenuEvent 1
clear @p[team=Playing] minecraft:written_book{dailyStory:1b}
execute if score event MenuEvent matches 1.. as @p[team=Playing] run function cm:pages/page_3/events/manage_events

# Refresh Scoreboard
  # Feeding
  # Characters handled by submit_<name>
  scoreboard players set giveMedkit MenuFeed 0
  scoreboard players set cansGiven MenuFeed 0
  scoreboard players set bottlesGiven MenuFeed 0

  # Expedition (Neighbourhood Default)
  scoreboard players set characterSelect MenuExplore 0
  scoreboard players set locationSelect MenuExplore 3

  # Events
  scoreboard players set event MenuEvent 0
  scoreboard players set choice MenuEvent 0
  scoreboard players set submit MenuEvent 0

  # Math
  scoreboard players set math_out em 0

# Declare New Day
function mc:states/stages/8_bunker/daily/manage_new_day
execute if score task AtomicDrill matches 12.. if score doPovExpedition Settings matches 0 run scoreboard players set stage AtomicDrill 2
execute if score task AtomicDrill matches 12.. if score doPovExpedition Settings matches 1 unless score task AtomicDrill matches 15 run scoreboard players set stage AtomicDrill 2