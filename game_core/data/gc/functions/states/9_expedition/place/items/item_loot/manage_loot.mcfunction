# Get Non-Food Items
execute if score itemsLeft ItemsExpedition matches 1.. run function gc:states/9_expedition/place/items/item_loot/set_loot_success

# Proceed
schedule function gc:states/9_expedition/place/inc_step 1t replace