# No Map
execute if score map ItemsBunker matches 0 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_ONE ExpeditionOdds
# No Appropriate Gear For Alerts
execute if score falloutAlert MenuExpedition matches 1 if score hasGasMask ItemsExpedition matches 0 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_THREE ExpeditionOdds
execute if score banditAlert MenuExpedition matches 1 if score hasArmour ItemsExpedition matches 0 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_THREE ExpeditionOdds