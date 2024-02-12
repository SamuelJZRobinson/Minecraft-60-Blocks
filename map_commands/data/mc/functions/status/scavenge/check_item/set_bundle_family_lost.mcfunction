# Set Template
execute unless data storage minecraft:bundles familyLostItems run data modify storage minecraft:bundles familyLostItems set from storage minecraft:bundletemplate Item

# Set Temporary Item
function mc:status/scavenge/check_item/set_temp_item

# Append Lost Items Bundle
data modify storage minecraft:bundles familyLostItems.tag.Items append from storage minecraft:tempitem Items