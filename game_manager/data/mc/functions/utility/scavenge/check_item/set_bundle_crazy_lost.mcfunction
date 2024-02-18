# Set Template
execute unless data storage minecraft:bundles crazyLostItems run data modify storage minecraft:bundles crazyLostItems set from storage minecraft:bundletemplate Item

# Set Temporary Item
function mc:utility/scavenge/check_item/set_temp_item

# Append Lost Items Bundle
data modify storage minecraft:bundles crazyLostItems.tag.Items append from storage minecraft:tempitem Items