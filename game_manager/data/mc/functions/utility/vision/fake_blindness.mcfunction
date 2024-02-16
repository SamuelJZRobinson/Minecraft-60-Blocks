# Set
execute if score fakeBlindness GameStatus matches 1 if entity @s[team=Playing,nbt=!{Inventory:[{Slot:103b,tag:{blindness:1b}}]}] run item replace entity @s armor.head with carved_pumpkin{display:{Name:'{"text":"Blindness"}'},blindness:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute if score fakeBlindness GameStatus matches 1 run effect give @s slowness infinite 6 true

# Reset
execute if score fakeBlindness GameStatus matches 2 run item replace entity @s armor.head with air 1
execute if score fakeBlindness GameStatus matches 2 run effect clear @s slowness
execute if score fakeBlindness GameStatus matches 2 run effect give @s blindness 1 0 true
execute if score fakeBlindness GameStatus matches 2 run scoreboard players set fakeBlindness GameStatus 0