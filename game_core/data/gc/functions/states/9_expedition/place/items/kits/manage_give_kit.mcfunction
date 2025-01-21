# Give Items
execute if score hasAmmo ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_gun_ammo
execute if score hasBoyScoutHandbook ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_boyscout_handbook
execute if score hasBugSpray ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_bug_spray
execute if score hasCards ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_cards
execute if score hasCheckers ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_checkers
execute if score hasFlashlight ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_flashlight
execute if score hasGasMask ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_gas_mask
execute if score hasHarmonica ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_harmonica
execute if score hasMap ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_map
execute if score hasPadlock ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_padlock
execute if score hasRadio ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_radio
execute if score hasSoup ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_soup
execute if score hasWater ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_water
execute if score hasAxe ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_axe
execute if score hasGun ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_gun
execute if score hasMedkit ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_medkit
execute if score hasSuitcase ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_suitcase
execute if score hasBodyArmour ItemsExpedition matches 1 run function gc:states/9_expedition/place/items/kits/give_body_armour

# Clear Items
scoreboard players set hasAmmo ItemsExpedition 0
scoreboard players set hasBoyScoutHandbook ItemsExpedition 0
scoreboard players set hasBugSpray ItemsExpedition 0
scoreboard players set hasCards ItemsExpedition 0
scoreboard players set hasCheckers ItemsExpedition 0
scoreboard players set hasFlashlight ItemsExpedition 0
scoreboard players set hasGasMask ItemsExpedition 0
scoreboard players set hasHarmonica ItemsExpedition 0
scoreboard players set hasMap ItemsExpedition 0
scoreboard players set hasPadlock ItemsExpedition 0
scoreboard players set hasRadio ItemsExpedition 0
scoreboard players set hasSoup ItemsExpedition 0
scoreboard players set hasWater ItemsExpedition 0
scoreboard players set hasAxe ItemsExpedition 0
scoreboard players set hasGun ItemsExpedition 0
scoreboard players set hasMedkit ItemsExpedition 0
scoreboard players set hasSuitcase ItemsExpedition 0
scoreboard players set hasBodyArmour ItemsExpedition 0

# Proceed
schedule function gc:states/9_expedition/place/inc_step 1t replace