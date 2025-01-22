# Notes
  # Atomic Drill task 14 makes everyone thirsty, task 15 fixes thirsty, task 16 character returns from expedition

# Update Characters
function gc:states/8_bunker/characters/update/manage_characters_update

# Spawn Characters
execute positioned 1 -48 -15 run function gc:states/8_bunker/characters/summon/summon_characters

# Update Living Characters
# execute if score alive DoloresStatus matches 1 unless score characterSent MenuExpedition matches 1 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function gc:states/8_bunker/characters/update/update_dolores
# execute if score alive MaryStatus matches 1 unless score characterSent MenuExpedition matches 2..3 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function gc:states/8_bunker/characters/update/update_mary
# execute if score alive TedStatus matches 1 unless score characterSent MenuExpedition matches 4 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function gc:states/8_bunker/characters/update/update_ted
# execute if score alive TimmyStatus matches 1 unless score characterSent MenuExpedition matches 5 unless score task AtomicDrill matches 13 unless score task AtomicDrill matches 18.. run function gc:states/8_bunker/characters/update/update_timmy