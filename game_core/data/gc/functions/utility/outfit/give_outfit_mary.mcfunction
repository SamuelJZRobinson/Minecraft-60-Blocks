# Give Outfit
execute if score isMutant MaryStatus matches 0 run item replace entity @s armor.head with pumpkin{display:{Name:'{"text":"Mary"}'},CustomModelData:3,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute if score isMutant MaryStatus matches 1 run item replace entity @s armor.head with pumpkin{display:{Name:'{"text":"Mutant Mary"}'},CustomModelData:4,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.chest with leather_chestplate{display:{color:13488091},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.legs with leather_leggings{display:{color:2501178},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.feet with leather_boots{display:{color:4208422},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1