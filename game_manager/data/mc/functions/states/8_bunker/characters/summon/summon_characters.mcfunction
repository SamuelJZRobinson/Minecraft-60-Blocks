# Notes
  # Status name visiblity is handled by raycast.

# Summon Characters
  # Ted
  execute if score alive TedStatus matches 1 unless score characterSent MenuExpedition matches 1 run function mc:states/8_bunker/characters/summon/summon_ted
  execute if score alive TedStatus matches 0 if score isCrazyEscaped TedStatus matches 0 run function mc:states/8_bunker/characters/summon/summon_ted_dead
  # Dolores
  execute if score alive DoloresStatus matches 1 unless score characterSent MenuExpedition matches 2 run function mc:states/8_bunker/characters/summon/summon_dolores
  execute if score alive DoloresStatus matches 0 if score isCrazyEscaped DoloresStatus matches 0 run function mc:states/8_bunker/characters/summon/summon_dolores_dead
  # Mary
  execute if score alive MaryStatus matches 1 unless score characterSent MenuExpedition matches 3 if score isMutant MaryStatus matches 0 run function mc:states/8_bunker/characters/summon/summon_mary
  execute if score alive MaryStatus matches 1 unless score characterSent MenuExpedition matches 3 if score isMutant MaryStatus matches 1 run function mc:states/8_bunker/characters/summon/summon_mary_mutant
  execute if score alive MaryStatus matches 0 if score isCrazyEscaped MaryStatus matches 0 run function mc:states/8_bunker/characters/summon/summon_mary_dead
  # Timmy
  execute if score alive TimmyStatus matches 1 unless score characterSent MenuExpedition matches 4 run function mc:states/8_bunker/characters/summon/summon_timmy
  execute if score alive TimmyStatus matches 0 if score isCrazyEscaped TimmyStatus matches 0 run function mc:states/8_bunker/characters/summon/summon_timmy_dead