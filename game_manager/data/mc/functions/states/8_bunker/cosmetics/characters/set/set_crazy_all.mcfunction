# Append Salvaged Items
  # Official
  execute if score ammo ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 1
  execute if score axe ItemsBunker matches 2 run data modify storage minecraft:scavenge randomId append value 2
  execute if score boyScoutHandbook ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 3
  execute if score bugSpray ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 4
  execute if score cards ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 5
  execute if score checkers ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 6
  execute if score flashlight ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 7
  execute if score gasMask ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 8
  execute if score gun ItemsBunker matches 3 run data modify storage minecraft:scavenge randomId append value 9
  execute if score harmonica ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 10
  execute if score map ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 11
  execute if score medkit ItemsBunker matches 2 run data modify storage minecraft:scavenge randomId append value 12
  execute if score padlock ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 13
  execute if score radio ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 14
  execute if score cans ItemsBunker matches 1.. run data modify storage minecraft:scavenge randomId append value 15
  execute if score suitcase ItemsBunker matches 3 run data modify storage minecraft:scavenge randomId append value 16
  execute if score bottles ItemsBunker matches 1.. run data modify storage minecraft:scavenge randomId append value 17
  # Custom
  execute if score armour ItemsBunker matches 3 run data modify storage minecraft:scavenge randomId append value 18

# Choose Items
function mc:utility/scavenge/process/bundles/check/check_random