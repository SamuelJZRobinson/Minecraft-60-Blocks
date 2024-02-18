# Items
function mc:utility/scavenge/set_item_attributes

# Salvage Crate
execute unless score lockInventory GameStatus matches 3 run function mc:utility/scavenge/check_full_slots
execute unless score lockInventory GameStatus matches 3 as @p[team=Playing,scores={OpenShulkerBox=1..}] run function mc:utility/scavenge/open_salvage_crate