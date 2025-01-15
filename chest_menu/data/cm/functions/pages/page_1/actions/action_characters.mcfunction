# Ted
execute if score alive TedStatus matches 1 unless score characterSent MenuExpedition matches 1 run function cm:pages/page_1/actions/action_characters_ted
# Dolores
execute if score alive DoloresStatus matches 1 unless score characterSent MenuExpedition matches 2 run function cm:pages/page_1/actions/action_characters_dolores
# Mary
execute if score alive MaryStatus matches 1 unless score characterSent MenuExpedition matches 3 run function cm:pages/page_1/actions/action_characters_mary
# Timmy
execute if score alive TimmyStatus matches 1 unless score characterSent MenuExpedition matches 4 run function cm:pages/page_1/actions/action_characters_timmy