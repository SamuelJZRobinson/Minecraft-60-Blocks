# Remove Supplies
scoreboard players operation soups ItemsBunker -= soupGiven MenuFeed
scoreboard players operation waters ItemsBunker -= waterGiven MenuFeed
execute if score giveMedkit MenuFeed matches 1.. run scoreboard players set medkit ItemsBunker -1

# Adjust Statistics
scoreboard players operation soupConsumed GameStatus += soupGiven MenuFeed
scoreboard players operation waterConsumed GameStatus += waterGiven MenuFeed

# Nourish Characters
execute if score alive TedStatus matches 1 run function cm:pages/submit/feed/submit_feed_ted
execute if score alive DoloresStatus matches 1 run function cm:pages/submit/feed/submit_feed_dolores
execute if score alive MaryStatus matches 1 run function cm:pages/submit/feed/submit_feed_mary
execute if score alive TimmyStatus matches 1 run function cm:pages/submit/feed/submit_feed_timmy

# Reset Scores
scoreboard players set giveMedkit MenuFeed 0
scoreboard players set soupGiven MenuFeed 0
scoreboard players set waterGiven MenuFeed 0