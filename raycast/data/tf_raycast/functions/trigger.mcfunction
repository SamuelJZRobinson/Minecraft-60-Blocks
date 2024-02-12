# Create Projectile
scoreboard players reset @s GunType
execute unless score @s GunCooldown matches 1.. at @s[nbt={SelectedItem:{tag:{gun:1b}},Inventory:[{id:"minecraft:iron_nugget",tag:{bullet:1b}}]}] run scoreboard players set @s GunType 1
execute unless score @s GunCooldown matches 1.. at @s[nbt={SelectedItem:{tag:{bugSpray:1b}},Inventory:[{id:"minecraft:white_dye",tag:{gas:1b}}]}] run scoreboard players set @s GunType 2
execute unless score @s GunCooldown matches 1.. at @s[nbt={SelectedItem:{tag:{harmonica:1b}},Inventory:[{id:"minecraft:bone_meal",tag:{breathe:1b}}]}] run scoreboard players set @s GunType 3
execute at @s[scores={GunType = 1..}] run function tf_raycast:start_raycast

# Open Item
execute at @s[nbt={SelectedItem:{tag:{ammo:1b}}}] run function cm:menu/submit/items/open_ammo
execute at @s[nbt={SelectedItem:{tag:{armour:1b}}}] run function cm:menu/submit/items/open_armour
execute at @s[nbt={SelectedItem:{tag:{medkit:1b}}}] anchored eyes run function cm:menu/submit/items/open_medkit
execute at @s[nbt={SelectedItem:{tag:{gasMask:1b}}}] run function cm:menu/submit/items/open_gas_mask