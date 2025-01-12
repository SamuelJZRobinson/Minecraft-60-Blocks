# Give Supplies
  # Normal
  execute if score isMutant MaryStatus matches 0 run function cm:pages/submit/feed/submit_feed_mary_normal
  # Mutant
  execute if score isMutant MaryStatus matches 1 run function cm:pages/submit/feed/submit_feed_mary_mutant

# Refresh Scores
scoreboard players set maryGiveSoup MenuFeed 0
scoreboard players set maryGiveWater MenuFeed 0