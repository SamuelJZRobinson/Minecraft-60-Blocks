# Notes
  # Influenced by constant exposure to upsetting events.
  # Break items and flee after 20 to 35 days.
  # Characters who can't break an item are forced to escape early.
  # Characters only break one item each time they become crazy.
  # Negative events: dying or escaping family members, being the only character remaining, or attacking neighbours.
  # Positive events: successful expeditions, friendly scavengers looking for supplies, not attacking neighbours.

# Crazy
  # Restore Sanity
  $execute if score sanity $(objective) >= SANITY_AMOUNT_MAX CharactersLevels run scoreboard players set isCrazy $(objective) 0
  $execute if score sanity $(objective) >= SANITY_AMOUNT_MAX CharactersLevels run scoreboard players set crazyDays $(objective) 0
  $execute if score sanity $(objective) >= SANITY_AMOUNT_MAX CharactersLevels run scoreboard players set isCrazyRage $(objective) 0
  # Crazy Chance
  $execute if score isCrazy $(objective) matches 0 if score sanity $(objective) = SANITY_AMOUNT_MIN CharactersLevels store result score output Math run function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":CRAZY,"objective":CharactersOdds}
  $execute if score isCrazy $(objective) matches 0 if score sanity $(objective) = SANITY_AMOUNT_MIN CharactersLevels if score output Math matches 1 run scoreboard players set isCrazy $(objective) 1

# Crazy Escape
  # Increment Days
  $execute if score isCrazy $(objective) matches 1 run scoreboard players add crazyDays $(objective) 1
  # Destroy Item Chance
  $execute if score isCrazyRage $(objective) matches 0 if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL CharactersLevels store result score output Math run function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":CRAZY_RAGE,"objective":CharactersOdds}
  $execute if score isCrazyRage $(objective) matches 0 if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL CharactersLevels if score itemCount ItemsBunker matches ..0 if score output Math matches 1 run scoreboard players set isCrazyEscaped $(objective) 1
  $execute if score isCrazyRage $(objective) matches 0 if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL CharactersLevels if score itemCount ItemsBunker matches 1.. if score output Math matches 1 run function gc:states/8_bunker/characters/update/manage_crazy_break_item
  $execute if score isCrazyRage $(objective) matches 0 if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL CharactersLevels if score output Math matches 1 run scoreboard players set isCrazyRage $(objective) 1
  # Escape Chance
  $execute if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL CharactersLevels store result score output Math run function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":CRAZY_ESCAPE,"objective":CharactersOdds}
  $execute if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_CRITICAL CharactersLevels if score output Math matches 1 run scoreboard players set isCrazyEscaped $(objective) 1
  # Guaranteed Death
  $execute if score crazyDays $(objective) >= CRAZY_ESCAPE_DAYS_DEATH CharactersLevels run scoreboard players set isCrazyEscaped $(objective) 1
  $execute if score isCrazyEscaped $(objective) matches 1 run scoreboard players set alive $(objective) -1