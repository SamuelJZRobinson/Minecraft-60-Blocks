# Summon Characters
  # Dolores
  execute if score alive DoloresStatus matches 1 run function mc:states/8_bunker/characters/summon/summon_dolores
  execute if score alive DoloresStatus matches 0 run function mc:states/8_bunker/characters/summon/summon_dolores_dead
  # Ted
  execute if score alive TedStatus matches 1 run function mc:states/8_bunker/characters/summon/summon_ted
  execute if score alive TedStatus matches 0 run function mc:states/8_bunker/characters/summon/summon_ted_dead
  # Mary Jane
  execute if score alive MaryStatus matches 1 if score mutant MaryStatus matches 0 run function mc:states/8_bunker/characters/summon/summon_mary
  execute if score alive MaryStatus matches 1 if score mutant MaryStatus matches 1 run function mc:states/8_bunker/characters/summon/summon_mary_mutant
  execute if score alive MaryStatus matches 0 run function mc:states/8_bunker/characters/summon/summon_mary_dead
  # Timmy
  execute if score alive TimmyStatus matches 1 run function mc:states/8_bunker/characters/summon/summon_timmy
  execute if score alive TimmyStatus matches 0 run function mc:states/8_bunker/characters/summon/summon_timmy_dead