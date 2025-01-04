# Notes
  # Full slots donate items to lesser slots, once slot one is filled all remaining items are treated as sustenance

# Calculate Tiers
execute if score slotThreeTry ItemsExpedition matches 1.. run function mc:states/9_expedition/place/items/set/set_loot_slot_three
execute if score slotTwoTry ItemsExpedition matches 1.. run function mc:states/9_expedition/place/items/set/set_loot_slot_two
execute if score slotOneTry ItemsExpedition matches 1.. run function mc:states/9_expedition/place/items/set/set_loot_slot_one

# Refresh
execute if score specialCountCopy ItemsExpedition matches 0 run scoreboard players set stage scavenges 6
execute if score specialCountCopy ItemsExpedition matches 0 run scoreboard players set loadItem ItemsExpedition 0
execute if score specialCountCopy ItemsExpedition matches 0 run function mc:states/9_expedition/place/items/get/get_slot_random

# Loop
execute if score specialCountCopy ItemsExpedition matches 1.. run function mc:states/9_expedition/place/items/set/set_loot_slot