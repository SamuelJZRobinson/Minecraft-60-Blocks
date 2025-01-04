# Count Bunker Contents
function mc:states/8_bunker/characters/count/count_family
function mc:states/8_bunker/items/count/count_items

# Check Ending
function mc:states/8_bunker/check_ending

# Chest Menu
scoreboard players set @p[team=Player] MenuMain 0

# Show Day
execute if score ending GameStatus matches 0 run function mc:states/8_bunker/show_day

# Check Expedition
execute if score ending GameStatus matches 0 run function mc:states/8_bunker/check_expedition

# Update Cosmetics
function mc:states/8_bunker/manage_cosmetics