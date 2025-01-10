# Decrement Countdown
execute unless score breakdown TedStatus matches ..0 run scoreboard players remove breakdown TedStatus 1
execute unless score crazyRage TedStatus matches -1 if score breakdown TedStatus = BREAKDOWN_MIN StatusLevels run scoreboard players set crazyRage TedStatus 1
execute if score breakdown TedStatus matches 0 run scoreboard players set crazyEscaped TedStatus 1

# Destroy Item Chance
execute store result storage minecraft:math y int 1 run scoreboard players get CRAZY_RAGE StatusOdds
execute if score crazyRage TedStatus matches 0 if score breakdown TedStatus <= BREAKDOWN_RAGE_MAX StatusLevels if score breakdown TedStatus > BREAKDOWN_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
execute if score crazyRage TedStatus matches 0 if score breakdown TedStatus <= BREAKDOWN_RAGE_MAX StatusLevels if score breakdown TedStatus > BREAKDOWN_MIN StatusLevels if score out Math matches 1 run scoreboard players set crazyRage TedStatus 1
execute if score crazyRage TedStatus matches 1 if score itemCount ItemsBunker matches ..0 run scoreboard players set crazyEscaped TedStatus 1
execute if score crazyRage TedStatus matches 1 if score itemCount ItemsBunker matches 1.. run function mc:states/8_bunker/characters/set/set_crazy_ted

# Escape Chance
execute store result storage minecraft:math y int 1 run scoreboard players get CRAZY_ESCAPE StatusOdds
execute if score breakdown TedStatus <= BREAKDOWN_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
execute if score breakdown TedStatus <= BREAKDOWN_MIN StatusLevels if score out Math matches 1 run scoreboard players set crazyEscaped TedStatus 1

# Dead
execute if score crazyEscaped TedStatus matches 1 run scoreboard players set alive TedStatus 0