# Set Score
scoreboard players set testsFailed Exception 0

# Test List
function gc:states/1_factory_reset/tests/test_not_started

# Approve
execute if score testsFailed Exception matches 0 run function gc:states/1_factory_reset/tests/approve