# Initial Bundle Check
execute if score day GameStatus matches ..1 run function gc:states/8_bunker/items/process/manage_bundles

# Count
function gc:states/8_bunker/characters/count/count_family
function gc:states/8_bunker/items/count/count_items

# Check Ending
function gc:states/8_bunker/check_ending

# Start Day
execute if score ending GameStatus matches 0 run function gc:states/8_bunker/new_day_success