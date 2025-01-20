# Load Items
execute if score hasAmmo ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 1
execute if score hasAxe ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 2
execute if score hasBoyScoutHandbook ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 3
execute if score hasBugSpray ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 4
execute if score hasCards ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 5
execute if score hasCheckers ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 6
execute if score hasFlashlight ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 7
execute if score hasGasMask ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 8
execute if score hasGun ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 9
execute if score hasHarmonica ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 10
execute if score hasMap ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 11
execute if score hasMedkit ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 12
execute if score hasPadlock ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 13
execute if score hasRadio ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 14
execute if score hasSoup ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 15
execute if score hasSuitcase ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 16
execute if score hasWater ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 17
execute if score hasBodyArmour ItemsExpedition matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 18

# Get Random Item
  # Count
  execute store result score randomItemCount ItemsBundles run data get storage minecraft:itemsprocess randomItemIds
  # One Array Item
  execute if score randomItemCount ItemsBundles matches 1 run data modify storage minecraft:itemsprocess expeditionLostItemIds append from storage minecraft:itemsprocess randomItemIds[0]
  # Two Or More Array Items
  execute if score randomItemCount ItemsBundles matches 2.. run function mc:utility/math/get_random_value_via_amount_score_m1 {"x":0,"score":randomItemCount,"objective":ItemsBundles}
  execute if score randomItemCount ItemsBundles matches 2.. run function mc:states/9_expedition/place/items/item_break/get_array_index with storage minecraft:math

# Reset Data
data remove storage minecraft:itemsprocess randomItemIds