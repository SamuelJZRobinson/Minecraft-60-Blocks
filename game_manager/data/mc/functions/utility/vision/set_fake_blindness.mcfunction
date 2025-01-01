# Set Carved Pumpkin
execute if entity @s[Mobsteam=Player,nbt=!{Inventory:[{Slot:103b,tag:{blindness:1b}}]}] run item replace entity @s armor.head with carved_pumpkin{display:{Name:'{"text":"Blindness"}'},blindness:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

# Remove Effects
effect give @s blindness infinite 0 true
effect give @s slowness infinite 6 true