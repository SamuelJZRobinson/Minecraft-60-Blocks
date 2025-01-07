# Atomic Drill
execute if score gamemode Settings matches 1 run clone -25 -61 54 -27 -63 50 20 130 8 masked

# Standard Gamemodes
  # Easy
  execute if score gamemode Settings matches 2..4 if score difficulty Settings matches 1 run clone -25 -61 48 -27 -63 44 20 130 8 masked
  # Normal
  execute if score gamemode Settings matches 2..4 if score difficulty Settings matches 2 run clone -25 -61 42 -27 -63 38 20 130 8 masked
  # Hard
  execute if score gamemode Settings matches 2..4 if score difficulty Settings matches 3 run clone -25 -61 36 -27 -63 32 20 130 8 masked