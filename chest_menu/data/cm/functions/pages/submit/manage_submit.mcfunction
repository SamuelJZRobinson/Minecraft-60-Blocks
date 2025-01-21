# Notes
  # giveMedkit MenuFeed is used instead of <name>GiveMedkit <Name>Status since only one medkit exists.

# Clear Bundles
function mc:states/1_factory_reset/set/set_scores_items_bundles

# Feeding
function cm:pages/submit/feed/manage_feed

# Expedition
function cm:pages/submit/expedition/manage_expedition

# Events
function cm:pages/submit/events/manage_events

# Declare New Day
function mc:states/8_bunker/manage_day
execute if score task AtomicDrill matches 12.. if score doPovExpedition Settings matches 0 run scoreboard players set stage AtomicDrill 2
execute if score task AtomicDrill matches 12.. if score doPovExpedition Settings matches 1 unless score task AtomicDrill matches 15 run scoreboard players set stage AtomicDrill 2