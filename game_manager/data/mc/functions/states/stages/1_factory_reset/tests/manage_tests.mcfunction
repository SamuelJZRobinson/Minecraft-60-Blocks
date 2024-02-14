# Test List
function mc:states/stages/1_factory_reset/tests/check_new_game

# Approve
execute if score started GameStatus matches 0 if score doException Exception matches 0 run schedule function mc:states/stages/1_factory_reset/tests/approved 1t replace