# Get Non-Food Items
execute if score nonFoodLeft ItemsExpedition matches 1.. run function mc:states/9_expedition/place/items/non_food_loot/set_loot_success

# Proceed
schedule function mc:states/9_expedition/place/inc_step 1t replace