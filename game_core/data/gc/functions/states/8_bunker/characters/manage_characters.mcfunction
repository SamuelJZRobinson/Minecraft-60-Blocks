# Notes
  # Characters are immune to status effects during an atomic drill or expedition
  # escape tracks when insane characters leave the bunker since it can occur at any time and is difficult to determine with breakdown
  # Since characters do not update while on expedition thier model and status text needs external checking
  # Atomic Drill task 14 makes everyone thirsty, task 15 fixes thirsty, task 16 character returns from expedition

# Character Perks
  # Mary
    # 20% less resistance to becoming crazy (managed by refresh_scores).
    # Scares away raiders.
    # Never crazy, sick, thirsty, tired, or injured.
    # Eats family members while starving.
    # Mutant Mary can only defend once and leaves after defending the second time.

# Update Characters
function gc:states/8_bunker/characters/update/manage_characters_update

# Spawn Characters
execute positioned 1 -48 -15 run function gc:states/8_bunker/characters/summon/summon_characters

# Update Living Characters
# execute if score alive DoloresStatus matches 1 unless score characterSent MenuExpedition matches 1 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function gc:states/8_bunker/characters/update/update_dolores
# execute if score alive MaryStatus matches 1 unless score characterSent MenuExpedition matches 2..3 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function gc:states/8_bunker/characters/update/update_mary
# execute if score alive TedStatus matches 1 unless score characterSent MenuExpedition matches 4 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function gc:states/8_bunker/characters/update/update_ted
# execute if score alive TimmyStatus matches 1 unless score characterSent MenuExpedition matches 5 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function gc:states/8_bunker/characters/update/update_timmy