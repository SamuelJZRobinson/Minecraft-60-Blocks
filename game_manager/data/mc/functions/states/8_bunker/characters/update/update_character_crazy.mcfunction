# Crazy
  # Stop Craziness
  $execute if score crazySanity $(objective) = CRAZY_SANITY_AMOUNT_MAX StatusLevels run scoreboard players set isCrazy $(objective) 0
  $execute if score crazySanity $(objective) = CRAZY_SANITY_AMOUNT_MAX StatusLevels run scoreboard players operation crazyEscapeCountdown $(objective) = CRAZY_ESCAPE_COUNTDOWN_MAX StatusLevels
  $execute if score crazySanity $(objective) = CRAZY_SANITY_AMOUNT_MAX StatusLevels run scoreboard players set crazyRage $(objective) 0
  # Crazy Chance
  execute store result storage minecraft:math y int 1 run scoreboard players get CRAZY StatusOdds
  $execute if score isCrazy $(objective) matches 0 if score crazySanity $(objective) = CRAZY_SANITY_AMOUNT_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
  $execute if score isCrazy $(objective) matches 0 if score crazySanity $(objective) = CRAZY_SANITY_AMOUNT_MIN StatusLevels if score out Math matches 1 run scoreboard players set isCrazy $(objective) 1

# Crazy Escape
  # Decrement Countdown
  $execute unless score crazyEscapeCountdown $(objective) matches ..0 run scoreboard players remove crazyEscapeCountdown $(objective) 1
  $execute unless score crazyRage $(objective) matches -1 if score crazyEscapeCountdown $(objective) = CRAZY_ESCAPE_COUNTDOWN_MIN StatusLevels run scoreboard players set crazyRage $(objective) 1
  $execute if score crazyEscapeCountdown $(objective) matches 0 run scoreboard players set crazyEscaped $(objective) 1
  # Destroy Item Chance
  execute store result storage minecraft:math y int 1 run scoreboard players get CRAZY_RAGE StatusOdds
  $execute if score crazyRage $(objective) matches 0 if score crazyEscapeCountdown $(objective) <= CRAZY_ESCAPE_COUNTDOWN_MID StatusLevels if score crazyEscapeCountdown $(objective) > CRAZY_ESCAPE_COUNTDOWN_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
  $execute if score crazyRage $(objective) matches 0 if score crazyEscapeCountdown $(objective) <= CRAZY_ESCAPE_COUNTDOWN_MID StatusLevels if score crazyEscapeCountdown $(objective) > CRAZY_ESCAPE_COUNTDOWN_MIN StatusLevels if score out Math matches 1 run scoreboard players set crazyRage $(objective) 1
  $execute if score crazyRage $(objective) matches 1 if score itemCount ItemsBunker matches ..0 run scoreboard players set crazyEscaped $(objective) 1
  $execute if score crazyRage $(objective) matches 1 if score itemCount ItemsBunker matches 1.. run function mc:states/8_bunker/characters/set_crazy_ted
  # Escape Chance
  execute store result storage minecraft:math y int 1 run scoreboard players get CRAZY_ESCAPE StatusOdds
  $execute if score crazyEscapeCountdown $(objective) <= CRAZY_ESCAPE_COUNTDOWN_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
  $execute if score crazyEscapeCountdown $(objective) <= CRAZY_ESCAPE_COUNTDOWN_MIN StatusLevels if score out Math matches 1 run scoreboard players set crazyEscaped $(objective) 1
  # Guaranteed Death
  $execute if score crazyEscaped $(objective) matches 1 run scoreboard players set alive $(objective) 0