# Atomic Drill
execute if score gamemode Settings matches 1 run setblock 17 36 15 structure_block{name:"minecraft:nukes/nuke-atomic-drill",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

# Standard Gamemodes
  # Easy
  execute if score gamemode Settings matches 2..4 if score difficulty Settings matches 1 run setblock 17 36 15 structure_block{name:"minecraft:nukes/nuke-easy",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
  # Normal
  execute if score gamemode Settings matches 2..4 if score difficulty Settings matches 2 run setblock 17 36 15 structure_block{name:"minecraft:nukes/nuke-medium",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
  # Hard
  execute if score gamemode Settings matches 2..4 if score difficulty Settings matches 3 run setblock 17 36 15 structure_block{name:"minecraft:nukes/nuke-hard",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

# Place Redstome
setblock 17 37 15 redstone_block