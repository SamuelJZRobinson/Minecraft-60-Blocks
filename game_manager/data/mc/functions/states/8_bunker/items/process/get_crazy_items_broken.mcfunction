# Copy Item Ids For Processing
data modify storage minecraft:itemsprocess processItemIds set from storage minecraft:itemsprocess crazyLostItemIds

# Process
function mc:states/8_bunker/items/process/check_item