# Get Food Items
execute if score foodLeft ItemsExpedition matches 1.. run function gc:states/9_expedition/place/items/food_loot/set_loot_success

# Proceed
schedule function gc:states/9_expedition/place/inc_step 1t replace