# Notes
  # Whole cans and bottles work in multiples of 4

# Remove Characters
kill @e[tag=BunkerNpc]

# Refresh Scores
function mc:quit/refresh_scores

# Bunker Clock
scoreboard players set clock Timer 3
scoreboard players set started GameStatus 1
scoreboard players set music GameStatus 5
scoreboard players set day GameStatus 1

# Atomic Drill
scoreboard players set task AtomicDrill 12
scoreboard players set stage AtomicDrill 0
scoreboard players set lockInventory GameStatus 3

# Chest Menu
team join Playing @p
clear @p[team=Playing]
scoreboard players set @p ChestMenuMain 0

# Items
scoreboard players set ammo ItemsBunker 1
scoreboard players set axe ItemsBunker 2
scoreboard players set bottles ItemsBunker 100
scoreboard players set boyScoutHandbook ItemsBunker 1
scoreboard players set bugSpray ItemsBunker 1
scoreboard players set cans ItemsBunker 100
scoreboard players set cards ItemsBunker 1
scoreboard players set checkers ItemsBunker 1
scoreboard players set flashlight ItemsBunker 1
scoreboard players set gasMask ItemsBunker 1
scoreboard players set gun ItemsBunker 2
scoreboard players set harmonica ItemsBunker 1
scoreboard players set map ItemsBunker 1
scoreboard players set medkit ItemsBunker 2
scoreboard players set padlock ItemsBunker 1
scoreboard players set radio ItemsBunker 1
scoreboard players set suitcase ItemsBunker 3
scoreboard players set armour ItemsBunker 3

function mc:status/scavenge/count_bunker_items

# Characters
scoreboard players set alive DoloresStatus 1
scoreboard players set alive MaryStatus 1
scoreboard players set alive TedStatus 1
scoreboard players set alive TimmyStatus 1

# scoreboard players set build DoloresStatus 2
# scoreboard players set build MaryStatus 3
# scoreboard players set build TedStatus 3
# scoreboard players set build TimmyStatus 2

scoreboard players set soup DoloresStatus 100
scoreboard players set soup MaryStatus 100
scoreboard players set soup TedStatus 100
scoreboard players set soup TimmyStatus 100

# scoreboard players operation water DoloresStatus = THIRST_MAX StatusLevels
scoreboard players set water DoloresStatus 100
scoreboard players set water MaryStatus 100
scoreboard players set water TedStatus 100
scoreboard players set water TimmyStatus 100

# scoreboard players set injured DoloresStatus 1
# scoreboard players set injured MaryStatus 1
# scoreboard players set injured TedStatus 1
# scoreboard players set injured TimmyStatus 1

# scoreboard players set sanity DoloresStatus 7
# scoreboard players set sanity MaryStatus 7
# scoreboard players set sanity TedStatus 7
# scoreboard players set sanity TimmyStatus 7

# scoreboard players set breakdown DoloresStatus 19
# scoreboard players set breakdown MaryStatus 19

# scoreboard players set sick DoloresStatus 1
# scoreboard players set sick MaryStatus 1
# scoreboard players set sick TedStatus 1
# scoreboard players set sick TimmyStatus 1

# scoreboard players set sickness DoloresStatus 6

# Expedition
scoreboard players set expeditionPrepared ChestMenuExplore 1

# Place Chest Menu
function cm:menu/place_chest_menu
function mc:events/daily/check_ending
function mc:states/stages/8_bunker/decorations/manage_decorations