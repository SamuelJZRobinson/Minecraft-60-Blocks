execute if score gamemode Settings matches 1 run data modify storage minecraft:exceptions message set value "Cannot restart scavenge, running atomic drill!"
execute if score gamemode Settings matches 1 run function mc:utility/exceptions/raise_warning