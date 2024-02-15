# Set Score
scoreboard players set testsFailed Exception 0

# Test List
function mc:states/stages/1_factory_reset/tests/test_not_started

# Approve
execute if score testsFailed Exception matches 0 run schedule function mc:states/stages/1_factory_reset/tests/approve 1t replace