# Notes
  # Characters are immune to status effects during an atomic drill or expedition
  # escape tracks when insane characters leave the bunker since it can occur at any time and is difficult to determine with breakdown
  # Since characters do not update while on expedition thier model and status text needs external checking
  # Atomic Drill task 14 makes everyone thirsty, task 15 fixes thirsty, task 16 character returns from expedition

# Character Perks
  # Mary Jane
    # 20% less resistance to becoming crazy (managed by refresh_scores).
    # Scares away raiders.
    # Never crazy, sick, thirsty, tired, or injured.
    # Eats family members while starving.
    # Mutant Mary can only defend once and leaves after defending the second time.

# Update Characters
  # # Ted
  # execute if score alive TedStatus matches 1 unless score characterSent MenuExplore matches 1 run data modify storage updatecharacters objective set value {"objective":TedStatus}
  # execute if score alive TedStatus matches 1 unless score characterSent MenuExplore matches 1 run function mc:states/8_bunker/characters/update/update_character
  # # Dolores
  # execute if score alive DoloresStatus matches 1 unless score characterSent MenuExplore matches 2 run data modify storage updatecharacters objective set value {"objective":DoloresStatus}
  # execute if score alive DoloresStatus matches 1 unless score characterSent MenuExplore matches 2 run function mc:states/8_bunker/characters/update/update_character
  # # Mary Jane
  # execute if score alive MaryStatus matches 1 unless score characterSent MenuExplore matches 3 run data modify storage updatecharacters objective set value {"objective":MaryStatus}
  # execute if score alive MaryStatus matches 1 unless score characterSent MenuExplore matches 3 if score mutant MaryStatus matches 0 run function mc:states/8_bunker/characters/update/update_character
  # execute if score mutant MaryStatus matches 1 unless score characterSent MenuExplore matches 3 if score mutant MaryStatus matches 1 run function mc:states/8_bunker/characters/update/update_mary_mutated
  # # Timmy
  # execute if score alive TimmyStatus matches 1 unless score characterSent MenuExplore matches 4 run data modify storage updatecharacters objective set value {"objective":TimmyStatus}
  # execute if score alive TimmyStatus matches 1 unless score characterSent MenuExplore matches 4 run function mc:states/8_bunker/characters/update/update_character

# Spawn Characters
execute positioned -11 -48 -15 run function mc:states/8_bunker/characters/summon/summon_characters

# Update Living Characters
# execute if score alive DoloresStatus matches 1 unless score characterSent MenuExplore matches 1 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function mc:states/8_bunker/characters/update/update_dolores
# execute if score alive MaryStatus matches 1 unless score characterSent MenuExplore matches 2..3 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function mc:states/8_bunker/characters/update/update_mary
# execute if score alive TedStatus matches 1 unless score characterSent MenuExplore matches 4 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function mc:states/8_bunker/characters/update/update_ted
# execute if score alive TimmyStatus matches 1 unless score characterSent MenuExplore matches 5 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function mc:states/8_bunker/characters/update/update_timmy