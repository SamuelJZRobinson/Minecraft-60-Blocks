# Set Scores
scoreboard players set submit MenuEvent 1

# Clear Daily Story
clear @p[team=Player] minecraft:written_book{dailyStory:1b}

# Get Event Outcome
execute if score event MenuEvent matches 1.. as @p[team=Player] run function cm:pages/page_3/menus/menu_events

# Reset Scores
scoreboard players set event MenuEvent 0
scoreboard players set choice MenuEvent 0
scoreboard players set submit MenuEvent 0