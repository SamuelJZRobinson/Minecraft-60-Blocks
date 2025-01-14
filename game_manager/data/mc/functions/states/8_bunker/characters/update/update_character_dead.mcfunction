
# Playsound
$execute if score alive $(objective) matches -1 if score isCrazyEscaped DoloresStatus matches 0 run function mc:sounds/character_death
$execute if score alive $(objective) matches -1 if score isCrazyEscaped DoloresStatus matches 1 run function mc:sounds/bunker_door

# Append Head
execute if score alive TedStatus matches -1 run data modify storage minecraft:itemsprocess charactersLostIds append value 21
execute if score alive DoloresStatus matches -1 run data modify storage minecraft:itemsprocess charactersLostIds append value 19
execute if score alive MaryStatus matches -1 run data modify storage minecraft:itemsprocess charactersLostIds append value 20
execute if score alive TimmyStatus matches -1 run data modify storage minecraft:itemsprocess charactersLostIds append value 22

# Debounce
$execute if score alive $(objective) matches -1 run scoreboard players set alive $(objective) 0