# Has Items
execute if score itemsTakenCount ItemsExpedition matches 1.. run execute store result score output Math run function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":ITEM_BREAK,"objective":ExpeditionOdds}
execute if score itemsTakenCount ItemsExpedition matches 1.. if score output Math matches 1 run function gc:states/9_expedition/place/items/item_break/check_item_break_success

# Proceed
schedule function gc:states/9_expedition/place/inc_step 1t replace