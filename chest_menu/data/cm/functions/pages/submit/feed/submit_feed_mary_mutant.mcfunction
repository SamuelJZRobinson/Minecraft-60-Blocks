# Give Supplies
  # Soup
  execute if score maryGiveSoup MenuFeed matches 1 run scoreboard players operation soup MaryStatus += HUNGER_AMOUNT_DANGER StatusLevels
  execute if score soup MaryStatus > HUNGER_AMOUNT_MAX StatusLevels run scoreboard players operation soup MaryStatus = HUNGER_AMOUNT_MAX StatusLevels