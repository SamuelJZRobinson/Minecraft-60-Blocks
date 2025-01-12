# Give Supplies
  # Soup
  execute if score maryGiveSoup MenuFeed matches 1 run scoreboard players operation soup MaryStatus = HUNGER_AMOUNT_MAX StatusLevels
  # Water
  execute if score maryGiveWater MenuFeed matches 1 run scoreboard players operation water MaryStatus = THIRST_AMOUNT_MAX StatusLevels
  # Medkit
  execute if score giveMedkit MenuFeed matches 2 run scoreboard players set isSick MaryStatus 0
  execute if score giveMedkit MenuFeed matches 2 run scoreboard players set sickDays MaryStatus 0
  execute if score giveMedkit MenuFeed matches 2 run scoreboard players set isInjured MaryStatus 0
  execute if score giveMedkit MenuFeed matches 2 run scoreboard players set injuredDays MaryStatus 0