# Count Bunker Contents
function gc:states/8_bunker/characters/count/count_family
function gc:states/8_bunker/items/count/count_items

# Check Ending
function gc:states/8_bunker/check_ending

# Chest Menu
execute if score ending GameStatus matches 0 run scoreboard players set @p[team=Player] MenuMain 0

# Show Day
execute if score ending GameStatus matches 0 run function gc:states/8_bunker/show_day

# Check Expedition
execute if score ending GameStatus matches 0 run function gc:states/8_bunker/check_expedition

# Bonous Items
execute if score ending GameStatus matches 0 if score day GameStatus matches 1 if score difficulty Settings matches 1..2 run function gc:states/8_bunker/items/process/manage_bonous_items

# Update Cosmetics
execute if score ending GameStatus matches 0 run function gc:states/8_bunker/manage_cosmetics