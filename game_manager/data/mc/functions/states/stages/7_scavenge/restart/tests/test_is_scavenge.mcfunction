execute unless score state GameStatus matches 6..7 run data modify storage minecraft:messages message set value "Cannot restart scavenge, it's not scavenge!"
execute unless score state GameStatus matches 6..7 run function mc:error_handling/raise_warning