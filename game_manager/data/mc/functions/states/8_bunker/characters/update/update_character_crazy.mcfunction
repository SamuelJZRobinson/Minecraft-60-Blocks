# Stop Craziness If Max Sane
execute if score sanity TedStatus = SANITY_MAX StatusLevels run scoreboard players set isCrazy TedStatus 0
execute if score sanity TedStatus = SANITY_MAX StatusLevels run scoreboard players operation breakdown TedStatus = BREAKDOWN_MAX StatusLevels
execute if score sanity TedStatus = SANITY_MAX StatusLevels run scoreboard players set crazyRage TedStatus 0

# Crazy Chance
execute store result storage minecraft:math y int 1 run scoreboard players get FATICRAZYGUE StatusOdds
execute if score isCrazy TedStatus matches 0 if score sanity TedStatus = SANITY_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
execute if score isCrazy TedStatus matches 0 if score sanity TedStatus = SANITY_MIN StatusLevels if score out Math matches 1 run scoreboard players set isCrazy TedStatus 1