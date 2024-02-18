# Set Template
execute if score difficulty Settings matches 1 if score itemsTotal CheckItems matches 4..5 unless data storage minecraft:bundles suitcaseItems run data modify storage minecraft:bundles suitcaseItems set from storage minecraft:bundletemplate Item
execute if score difficulty Settings matches 2 if score itemsTotal CheckItems matches 2 unless data storage minecraft:bundles suitcaseItems run data modify storage minecraft:bundles suitcaseItems set from storage minecraft:bundletemplate Item
execute unless data storage minecraft:bundles bunkerItems run data modify storage minecraft:bundles bunkerItems set from storage minecraft:bundletemplate Item

# Set Temporary Item
function mc:utility/scavenge/check_item/set_temp_item

# Append Bundles
  # Suitcase
  execute if score difficulty Settings matches 1 if score suitcase ItemsBunker matches 3 if score itemsTotal CheckItems matches 4..5 run data modify storage minecraft:bundles suitcaseItems.tag.Items append from storage minecraft:tempitem Items
  execute if score difficulty Settings matches 2 if score suitcase ItemsBunker matches 3 if score itemsTotal CheckItems matches 2 run data modify storage minecraft:bundles suitcaseItems.tag.Items append from storage minecraft:tempitem Items
  # Bunker
  execute if score difficulty Settings matches 1 if score itemsTotal CheckItems matches ..3 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items
  execute if score difficulty Settings matches 2 if score itemsTotal CheckItems matches ..1 run data modify storage minecraft:bundles bunkerItems.tag.Items append from storage minecraft:tempitem Items