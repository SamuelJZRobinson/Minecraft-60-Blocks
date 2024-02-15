# Set Score
scoreboard players set testsFailed Exception 0

# Test List
function mc:states/stages/3_start_request/tests/test_wip_gamemode

# Approve
execute if score testsFailed Exception matches 0 run schedule function mc:states/stages/3_start_request/tests/approved 1t replace