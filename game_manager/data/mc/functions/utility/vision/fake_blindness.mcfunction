# Notes
  # blindness determines how to obstruct the player's vision. 1 is blind (no loading text), 2 is blind (loading text), and 3 is reset
  # Outfits are given after the blindness pumpkin to avoid being replaced

# General
execute if score blindness GameStatus matches 1..2 if entity @p[team=Playing,nbt=!{Inventory:[{Slot:103b,tag:{blindness:1b}}]}] run item replace entity @s armor.head with carved_pumpkin{display:{Name:'{"text":"Blindness"}'},blindness:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
execute if score blindness GameStatus matches 1..2 run effect give @s slowness 999999 255 true

# Loading Text
execute if score blindness GameStatus matches 2 run function mc:utility/vision/fake_blindness_loading

# Reset
  # Remove
  execute if score blindness GameStatus matches 3 run item replace entity @s armor.head with air 1
  execute if score blindness GameStatus matches 3 run effect clear @s slowness
  execute if score blindness GameStatus matches 3 unless score gameMode Lobby matches 1 run title @s actionbar {"text":""}
  # Give Outfit
  execute if score blindness GameStatus matches 3 if score clock Timer matches ..2 run function mc:play/lobby/manage_house_outfit
  execute if score blindness GameStatus matches 3 if score clock Timer matches 4 run function mc:play/lobby/manage_expedition_outfit
  # Refresh Score
  execute if score blindness GameStatus matches 3 run scoreboard players set blindness GameStatus 0