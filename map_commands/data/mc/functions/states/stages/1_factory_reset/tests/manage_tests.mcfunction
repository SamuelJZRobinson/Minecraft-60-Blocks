# Test List
function mc:states/stages/1_factory_reset/tests/check_new_game

# Approve
execute if score doException Exception matches 0 run schedule function mc:states/stages/1_factory_reset/tests/approve 1t replace