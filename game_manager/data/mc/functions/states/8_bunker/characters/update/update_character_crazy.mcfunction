# Notes
  # Characters who can't break an item are forced to escape early.
  # Characters only break one item each time they become crazy.

# Crazy
  # Restore Sanity
  $execute if score sanity $(objective) >= SANITY_AMOUNT_MAX StatusLevels run scoreboard players set isCrazy $(objective) 0
  $execute if score sanity $(objective) >= SANITY_AMOUNT_MAX StatusLevels run scoreboard players set crazyDays $(objective) 0
  $execute if score sanity $(objective) >= SANITY_AMOUNT_MAX StatusLevels run scoreboard players set isCrazyRage $(objective) 0
  # Crazy Chance
  execute store result storage minecraft:math y int 1 run scoreboard players get CRAZY StatusOdds
  $execute if score isCrazy $(objective) matches 0 if score sanity $(objective) = SANITY_AMOUNT_MIN StatusLevels run function mc:utility/math/get_random_value with storage minecraft:math
  $execute if score isCrazy $(objective) matches 0 if score sanity $(objective) = SANITY_AMOUNT_MIN StatusLevels if score out Math matches 1 run scoreboard players set isCrazy $(objective) 1

# Crazy Escape
  # Increment Days
  $execute if score isCrazy $(objective) matches 1 run scoreboard players add crazyDays $(objective) 1
  # Destroy Item Chance
  execute store result storage minecraft:math y int 1 run scoreboard players get CRAZY_RAGE StatusOdds
  $execute if score isCrazyRage $(objective) matches 0 if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL StatusLevels run function mc:utility/math/get_random_value with storage minecraft:math
  $execute if score isCrazyRage $(objective) matches 0 if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL StatusLevels if score itemCount ItemsBunker matches ..0 if score out Math matches 1 run scoreboard players set isCrazyEscaped $(objective) 1
  $execute if score isCrazyRage $(objective) matches 0 if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL StatusLevels if score itemCount ItemsBunker matches 1.. if score out Math matches 1 run function mc:states/8_bunker/characters/update/manage_crazy_break_item
  $execute if score isCrazyRage $(objective) matches 0 if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL StatusLevels if score out Math matches 1 run scoreboard players set isCrazyRage $(objective) 1
  # Escape Chance
  execute store result storage minecraft:math y int 1 run scoreboard players get CRAZY_ESCAPE StatusOdds
  $execute if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL StatusLevels run function mc:utility/math/get_random_value with storage minecraft:math
  $execute if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL StatusLevels if score out Math matches 1 run scoreboard players set isCrazyEscaped $(objective) 1
  # Guaranteed Death
  $execute if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_DEATH StatusLevels run scoreboard players set isCrazyEscaped $(objective) 1
  $execute if score isCrazyEscaped $(objective) matches 1 run scoreboard players set alive $(objective) 0