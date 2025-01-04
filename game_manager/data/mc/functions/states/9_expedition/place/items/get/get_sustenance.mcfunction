execute if score loadItem ItemsExpedition matches 1 if score soupCount ItemsExpedition matches 0 run scoreboard players add loadItem ItemsExpedition 1
execute if score loadItem ItemsExpedition matches 2 if score waterCount ItemsExpedition matches 0 run scoreboard players add loadItem ItemsExpedition 1

# Load Sustenance
  # Soup
  execute if score loadItem ItemsExpedition matches 1 if score soupCount ItemsExpedition matches 1.. run data modify storage minecraft:scavenge savedItemIds append value 15
  execute if score loadItem ItemsExpedition matches 1 if score soupCount ItemsExpedition matches 1.. run scoreboard players remove soupCount ItemsExpedition 1

  # Water
  execute if score loadItem ItemsExpedition matches 2 if score waterCount ItemsExpedition matches 1.. run data modify storage minecraft:scavenge savedItemIds append value 17
  execute if score loadItem ItemsExpedition matches 2 if score waterCount ItemsExpedition matches 1.. run scoreboard players remove waterCount ItemsExpedition 1

# Set Bundle
execute if score loadItem ItemsExpedition matches 3 run function mc:utility/scavenge/process/bundles/check/check_main_add

# Set Stage
execute if score loadItem ItemsExpedition matches 3 run scoreboard players add stage ItemsExpedition 1

# Loop
execute if score loadItem ItemsExpedition matches 1..2 run function mc:states/9_expedition/place/items/get/get_sustenance