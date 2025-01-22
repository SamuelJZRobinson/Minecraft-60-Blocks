# Get Food Items
execute if score foodLeft ItemsExpedition matches 1.. run function gc:states/9_expedition/items/food_loot/set_loot_success

# Proceed
schedule function gc:states/9_expedition/inc_step 1t replace