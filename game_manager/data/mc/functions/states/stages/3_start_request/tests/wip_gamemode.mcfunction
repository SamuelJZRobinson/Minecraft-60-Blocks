execute if score gamemode Settings matches 2 run data modify storage minecraft:messages message set value "Apocalypse still in development!"
execute if score gamemode Settings matches 2 run function mc:messages/raise_exception

execute if score gamemode Settings matches 4 run data modify storage minecraft:messages message set value "Survival still in development!"
execute if score gamemode Settings matches 4 run function mc:messages/raise_exception