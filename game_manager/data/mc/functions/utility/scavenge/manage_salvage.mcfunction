# Items
function mc:utility/scavenge/collect/items/set_item_attributes

# Salvage Crate
execute unless score lockInventory GameStatus matches 3 run function mc:utility/scavenge/collect/inventory/check_full_slots
execute unless score lockInventory GameStatus matches 3 as @p[team=Playing,scores={OpenShulkerBox=1..}] run function mc:utility/scavenge/collect/inventory/open_salvage_crate