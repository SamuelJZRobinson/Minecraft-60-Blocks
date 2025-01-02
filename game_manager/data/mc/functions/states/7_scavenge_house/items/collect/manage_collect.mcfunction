# Modify Items
function mc:states/7_scavenge_house/items/collect/set_item_attributes

# Inventory Full Warning
execute if score state GameStatus matches 7 run function mc:states/7_scavenge_house/items/collect/get_hotbar_full_slots

# Open Salvage Crate
  # Has Items
  execute if score state GameStatus matches 7 if score fullSlots GameStatus matches 1.. as @p[team=Player,scores={OpenShulkerBox=1..}] run function mc:states/7_scavenge_house/items/collect/open_salvage_crate
  # No Items
  execute if score state GameStatus matches 7 if score fullSlots GameStatus matches 0 as @p[team=Player,scores={OpenShulkerBox=1..}] run function mc:states/7_scavenge_house/items/collect/close_salvage_crate
  execute if score state GameStatus matches 7 if score fullSlots GameStatus matches 0 as @p[team=Player,scores={OpenShulkerBox=1..}] run scoreboard players reset @s OpenShulkerBox