# Modify Items
function gc:states/7_scavenge_house/items/collect/set_item_attributes

# Inventory Full Warning
function gc:states/7_scavenge_house/items/collect/get_hotbar_full_slots

# Open Salvage Crate
  # Has Items
  execute if score fullSlots GameStatus matches 1.. as @p[team=Player,scores={OpenShulkerBox=1..}] run function gc:states/7_scavenge_house/items/collect/open_salvage_crate
  # No Items
  execute if score fullSlots GameStatus matches 0 as @p[team=Player,scores={OpenShulkerBox=1..}] run function gc:states/7_scavenge_house/items/collect/close_salvage_crate
  execute if score fullSlots GameStatus matches 0 as @p[team=Player,scores={OpenShulkerBox=1..}] run scoreboard players reset @s OpenShulkerBox