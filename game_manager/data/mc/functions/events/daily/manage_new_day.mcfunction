# Chest Menu
scoreboard players set @p[team=Playing] ChestMenuMain 0

# Check Ending
function mc:events/daily/check_ending

# Update Status
execute if score ending GameStatus matches 0 run function mc:events/daily/show_day