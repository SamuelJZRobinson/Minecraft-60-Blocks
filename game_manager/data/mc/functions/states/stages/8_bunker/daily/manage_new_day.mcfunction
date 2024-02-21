# Chest Menu
scoreboard players set @p[team=Playing] MenuMain 0

# Count Bunker Contents
function mc:states/stages/8_bunker/cosmetics/characters/count/count_family
function mc:states/stages/8_bunker/cosmetics/items/count/count_items

# Check Ending
function mc:states/stages/8_bunker/daily/check_ending

# Start Day
execute if score ending GameStatus matches 0 run function mc:states/stages/8_bunker/daily/show_day