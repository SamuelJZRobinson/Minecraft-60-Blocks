# Gained Items
execute if data storage minecraft:bundles bunkerItems{Slot:0b} run data modify storage minecraft:bundles bunkerItems.Slot set value 4b
execute if data storage minecraft:bundles bunkerItems.tag.display{Name:'{"text":"#"}'} run data modify storage minecraft:bundles bunkerItems.tag.display.Name set value '{"text":"Bunker Loot"}'
execute if data storage minecraft:bundles suitcaseItems{Slot:0b} run data modify storage minecraft:bundles suitcaseItems.Slot set value 5b
execute if data storage minecraft:bundles suitcaseItems.tag.display{Name:'{"text":"#"}'} run data modify storage minecraft:bundles suitcaseItems.tag.display.Name set value '{"text":"Suitcase Loot"}'
execute if data storage minecraft:bundles eventItems{Slot:0b} run data modify storage minecraft:bundles eventItems.Slot set value 6b
execute if data storage minecraft:bundles eventItems.tag.display{Name:'{"text":"#"}'} run data modify storage minecraft:bundles eventItems.tag.display.Name set value '{"text":"Event Loot"}'
execute if data storage minecraft:bundles expeditionLootItems{Slot:0b} run data modify storage minecraft:bundles expeditionLootItems.Slot set value 7b
execute if data storage minecraft:bundles expeditionLootItems.tag.display{Name:'{"text":"#"}'} run data modify storage minecraft:bundles expeditionLootItems.tag.display.Name set value '{"text":"Expedition Loot"}'
# Lost Items
execute if data storage minecraft:bundles crazyLostItems{Slot:0b} run data modify storage minecraft:bundles crazyLostItems.Slot set value 13b
execute if data storage minecraft:bundles crazyLostItems.tag.display{Name:'{"text":"#"}'} run data modify storage minecraft:bundles crazyLostItems.tag.display.Name set value '{"text":"Crazy Lost Items"}'
execute if data storage minecraft:bundles eventLostItems{Slot:0b} run data modify storage minecraft:bundles eventLostItems.Slot set value 14b
execute if data storage minecraft:bundles eventLostItems.tag.display{Name:'{"text":"#"}'} run data modify storage minecraft:bundles eventLostItems.tag.display.Name set value '{"text":"Event Lost Items"}'
execute if data storage minecraft:bundles expeditionLostItems{Slot:0b} run data modify storage minecraft:bundles expeditionLostItems.Slot set value 15b
execute if data storage minecraft:bundles expeditionLostItems.tag.display{Name:'{"text":"#"}'} run data modify storage minecraft:bundles expeditionLostItems.tag.display.Name set value '{"text":"Expedition Lost Items"}'
execute if data storage minecraft:bundles familyLostItems{Slot:0b} run data modify storage minecraft:bundles familyLostItems.Slot set value 16b
execute if data storage minecraft:bundles familyLostItems.tag.display{Name:'{"text":"#"}'} run data modify storage minecraft:bundles familyLostItems.tag.display.Name set value '{"text":"Lost Family"}'