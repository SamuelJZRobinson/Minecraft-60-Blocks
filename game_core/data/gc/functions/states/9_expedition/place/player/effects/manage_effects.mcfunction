# Default
execute unless score characterSent MenuExpedition matches 3 run function gc:utility/effects/effects_scavenge_default

# Mary
  # Default
  execute if score characterSent MenuExpedition matches 3 if score isMutant MaryStatus matches 0 run function gc:utility/effects/effects_scavenge_default
  # Mutant
  execute if score characterSent MenuExpedition matches 3 if score isMutant MaryStatus matches 1 run function gc:utility/effects/effects_scavenge_mutant