# Notes
  # giveMedkit MenuFeed is used instead of <name>GiveMedkit <Name>Status since only one medkit exists.

# Clear Bundles
function mc:states/1_factory_reset/set/set_data_stores

# Feeding
function cm:pages/submit/feed/submit_feed

# Expedition
  # Run 
  function cm:pages/submit/expedition/check_expedition
  # Reset Scores
  scoreboard players set characterSelect MenuExpedition 0
  scoreboard players set mapSelect MenuExpedition 3

# Events
  # Allow Event Outcome
  scoreboard players set submit MenuEvent 1
  # Give New Event
  clear @p[team=Player] minecraft:written_book{dailyStory:1b}
  execute if score event MenuEvent matches 1.. as @p[team=Player] run function cm:pages/page_3/menus/menu_events
  # Reset Scores
  scoreboard players set event MenuEvent 0
  scoreboard players set choice MenuEvent 0

# Reset Scores
scoreboard players set submit MenuEvent 0

# Declare New Day
schedule function mc:states/8_bunker/manage_day 1t replace
execute if score task AtomicDrill matches 12.. if score doPovExpedition Settings matches 0 run scoreboard players set stage AtomicDrill 2
execute if score task AtomicDrill matches 12.. if score doPovExpedition Settings matches 1 unless score task AtomicDrill matches 15 run scoreboard players set stage AtomicDrill 2