# Apocalypse
execute if score gamemode Settings matches 2 run data modify storage minecraft:exceptions message set value "Apocalypse is still in development!"
execute if score gamemode Settings matches 2 run function mc:utility/exceptions/raise_warning
# Survival
execute if score gamemode Settings matches 4 run data modify storage minecraft:exceptions message set value "Survival is still in development!"
execute if score gamemode Settings matches 4 run function mc:utility/exceptions/raise_warning