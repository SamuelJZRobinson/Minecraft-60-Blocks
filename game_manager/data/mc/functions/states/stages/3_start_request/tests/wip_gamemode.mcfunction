execute if score gamemode Settings matches 2 run data modify storage minecraft:messages message set value "Apocalypse is still in development!"
execute if score gamemode Settings matches 2 run function mc:messages/raise_exception

execute if score gamemode Settings matches 4 run data modify storage minecraft:messages message set value "Survival is still in development!"
execute if score gamemode Settings matches 4 run function mc:messages/raise_exception