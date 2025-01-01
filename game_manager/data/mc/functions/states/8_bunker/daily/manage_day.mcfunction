# Chest Menu
scoreboard players set @p[team=Playing] MenuMain 0

# Count Bunker Contents
function mc:states/8_bunker/cosmetics/characters/count/count_family
function mc:states/8_bunker/cosmetics/items/count/count_items

# Check Ending
function mc:states/8_bunker/daily/check_ending

# Show Day
execute if score ending GameStatus matches 0 run function mc:states/8_bunker/daily/show_day

# Check Expedition
execute if score ending GameStatus matches 0 run function mc:states/8_bunker/daily/check_expedition