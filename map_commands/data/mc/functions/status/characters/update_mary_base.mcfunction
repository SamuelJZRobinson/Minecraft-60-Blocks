# Notes
  # Version 0.84
  # Perk 1: 20% less resistance to becoming crazy (managed by refresh_scores)
  # Perk 2: after mutating Mary averts raiders and is never crazy, sick, thirsty, tired, or injured. However, she may eat family members while starving
  # Mutant Mary can only defend once and leaves after defendsing the second time.

# Hunger
  # Reduce Countdown
  execute unless score soup MaryStatus matches ..0 run scoreboard players remove soup MaryStatus 1
  execute if score soup MaryStatus matches 0 run scoreboard players set alive MaryStatus 0

# Refresh Status Effects
execute if score mutated MaryStatus matches 1 as @e[x=2,y=54,z=31,dy=4,dz=1,type=minecraft:armor_stand,tag=bunkerMary,tag=!mutantChange] run function mc:status/characters/update_mary_mutated

# Call Normal Status Effects
execute if score mutated MaryStatus matches 0 run function mc:status/characters/update_mary_normal

# Decorate Bunker
  # Spawn
  execute if score alive MaryStatus matches 1 unless entity @e[x=2,y=54,z=31,dy=4,dz=1,type=minecraft:armor_stand,tag=bunkerMary] run function mc:status/characters/spawn_mary
  # Update Death
  execute if score alive MaryStatus matches 0 as @e[x=2,y=54,z=31,dy=4,dz=1,type=minecraft:armor_stand,tag=bunkerMary] run function mc:status/characters/update_mary_dead