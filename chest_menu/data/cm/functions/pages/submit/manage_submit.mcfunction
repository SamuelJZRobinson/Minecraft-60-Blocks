# Notes
  # giveMedkit MenuFeed is used instead of <name>GiveMedkit <Name>Status since only one medkit exists.

# Clear Bundles
function mc:states/stages/1_factory_reset/set/set_bundles

# Feeding
  # Remove Supplies
  scoreboard players operation cans ItemsBunker -= cansGiven MenuFeed
  scoreboard players operation bottles ItemsBunker -= bottlesGiven MenuFeed
  execute if score giveMedkit MenuFeed matches 1.. run scoreboard players set medkit ItemsBunker -1
  # Statistics
  scoreboard players operation soupConsumed GameStatus += cansGiven MenuFeed
  scoreboard players operation waterConsumed GameStatus += bottlesGiven MenuFeed
  # Nourish Characters
  function cm:pages/submit/characters/manage_characters
  # Reset Scores
  scoreboard players set giveMedkit MenuFeed 0
  scoreboard players set cansGiven MenuFeed 0
  scoreboard players set bottlesGiven MenuFeed 0

# Expedition
  # Run 
  function cm:pages/submit/expedition/check_expedition
  # Reset Scores
  scoreboard players set characterSelect MenuExplore 0
  scoreboard players set mapSelect MenuExplore 3

# Events
  # Allow Event Outcome
  scoreboard players set submit MenuEvent 1
  # Give New Event
  clear @p[team=Playing] minecraft:written_book{dailyStory:1b}
  execute if score event MenuEvent matches 1.. as @p[team=Playing] run function cm:pages/page_3/menus/menu_events
  # Reset Scores
  scoreboard players set event MenuEvent 0
  scoreboard players set choice MenuEvent 0
  scoreboard players set submit MenuEvent 0

# Declare New Day
schedule function mc:states/stages/8_bunker/daily/manage_day 1t replace
execute if score task AtomicDrill matches 12.. if score doPovExpedition Settings matches 0 run scoreboard players set stage AtomicDrill 2
execute if score task AtomicDrill matches 12.. if score doPovExpedition Settings matches 1 unless score task AtomicDrill matches 15 run scoreboard players set stage AtomicDrill 2