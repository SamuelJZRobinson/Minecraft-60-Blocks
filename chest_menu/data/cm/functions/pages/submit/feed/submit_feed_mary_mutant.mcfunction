# Give Supplies
  # Soup
  execute if score maryGiveSoup MenuFeed matches 1 run scoreboard players operation soup MaryStatus += HUNGER_AMOUNT_DANGER CharactersLevels
  execute if score soup MaryStatus > HUNGER_AMOUNT_MAX CharactersLevels run scoreboard players operation soup MaryStatus = HUNGER_AMOUNT_MAX CharactersLevels