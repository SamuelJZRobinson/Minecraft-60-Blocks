# Atomic Drill
execute if score gamemode Settings matches 1 run clone -25 3 54 -27 1 50 20 130 8 masked

# Difficulties
execute if score gamemode Settings matches 2..4 if score difficulty Settings matches 1 run clone -25 3 48 -27 1 44 20 130 8 masked
execute if score gamemode Settings matches 2..4 if score difficulty Settings matches 2 run clone -25 3 42 -27 1 38 20 130 8 masked
execute if score gamemode Settings matches 2..4 if score difficulty Settings matches 3 run clone -25 3 36 -27 1 32 20 130 8 masked