# Set Scores
scoreboard players set fakeBlindness GameStatus 1
scoreboard players add day GameStatus 1

# Titles
title @a times 0 50 20
title @a title ["Day ",{"score":{"name":"day","objective":"GameStatus"}}]

# Check Expedition
function mc:states/stages/8_bunker/daily/check_expedition