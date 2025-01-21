# Summon Mob Tiers
execute if score tierOneMobsLeft MobsExpedition matches 1.. at @p[team=Player] positioned ~ ~1 ~ run function gc:states/9_expedition/place/mobs/summon/summon_mobs_tier_one
execute if score tierTwoMobsLeft MobsExpedition matches 1.. if score banditAlert MenuExpedition matches 1 at @p[team=Player] positioned ~ ~1 ~ run function gc:states/9_expedition/place/mobs/summon/summon_mobs_tier_two_bandits
execute if score tierTwoMobsLeft MobsExpedition matches 1.. if score banditAlert MenuExpedition matches 0 at @p[team=Player] positioned ~ ~1 ~ run function gc:states/9_expedition/place/mobs/summon/summon_mobs_tier_two
execute if score tierThreeMobsLeft MobsExpedition matches 1.. at @p[team=Player] positioned ~ ~1 ~ run function gc:states/9_expedition/place/mobs/summon/summon_mobs_tier_three

# Proceed
schedule function gc:states/9_expedition/place/inc_step 1t replace