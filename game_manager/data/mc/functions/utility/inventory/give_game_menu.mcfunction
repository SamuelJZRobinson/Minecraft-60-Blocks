clear @s minecraft:written_book{gameMenu:1b}
item replace entity @s hotbar.8 with written_book{display:{Name:'{"text":"Game Menu","color":"red","bold":true}'},gameMenu:1b,title:"Game Menu",author:"BlackeyeI",generation:0,pages:['[{"text":"Contents","bold":true},{"text":"\\nGame Info","bold":false},{"text":"\\nItems","color":"dark_blue","bold":false,"underlined":true,"clickEvent":{"action":"change_page","value":"2"}},{"text":"\\nCharacters","color":"dark_blue","bold":false,"underlined":true,"clickEvent":{"action":"change_page","value":"7"}},{"text":"\\nStatus Effects","color":"dark_blue","bold":false,"underlined":true,"clickEvent":{"action":"change_page","value":"11"}},{"text":"\\nJournal & Chest","color":"dark_blue","bold":false,"underlined":true,"clickEvent":{"action":"change_page","value":"15"}},{"text":"\\nExpeditions","color":"dark_blue","bold":false,"underlined":true,"clickEvent":{"action":"change_page","value":"16"}},{"text":"\\n\\nActions","bold":false},{"text":"\\nRestart Scavenge","color":"dark_blue","bold":false,"underlined":true,"clickEvent":{"action":"change_page","value":"17"}},{"text":"\\nQuit Game","color":"dark_blue","bold":false,"underlined":true,"clickEvent":{"action":"change_page","value":"18"}}]','[{"text":"1 Items ","bold":true,"italic":false},{"text":"\\nAmmo: ","bold":true},{"text":"good for refilling guns and trades.","bold":false},{"text":"\\nAxe: "},{"text":"melee weapon that alerts military and cauterizes wounds.","bold":false},{"text":"\\nBoy Scout Handbook: "},{"text":"gives advice, repairs tools, and kills mutant insects.","bold":false}]','[{"text":"Bug Spray: ","bold":true},{"text":"kills mutant insects and can forge a medkit.","bold":false},{"text":"\\nCards: ","bold":true},{"text":"increases sanity, alerts military, supports gambling for supplies, and is valuable in trades.","bold":false},{"text":"\\nCheckers: "},{"text":"usually increases sanity but may cause distress.","bold":false},{"text":"\\nFlashlight: "},{"text":"brightens areas and signals military aircraft.","bold":false}]','[{"text":"Gas Mask: ","bold":true},{"text":"prevents radiation sickness.","bold":false},{"text":"\\nGun: "},{"text":"ranged weapon ideal for defence.","bold":false},{"text":"\\nHarmonica: "},{"text":"increases sanity and may prevent raids.","bold":false},{"text":"\\nMap: "},{"text":"increases locations, movement speed, and finds rescue.","bold":false},{"text":"\\nPadlock: "},{"text":"keeps out trespassers.","bold":false}]','[{"text":"Radio: ","bold":true},{"text":"receives military broadcasts and improves sanity.","bold":false},{"text":"\\nMedkit: "},{"text":"cures illnesses and injuries.","bold":false},{"text":"\\nSoup Can: ","bold":true},{"text":"restores hunger for ten days, persistent feeding cures ailments.","bold":false},{"text":"\\nSuitcase: ","bold":true},{"text":"carries three items to the surface.","bold":false}]','[{"text":"Water Bottle: ","bold":true},{"text":"restores thirst for five days.","bold":false},{"text":"\\nBody Armour: "},{"text":"protects against a bandit ambush while on expedition.","bold":false}]','[{"text":"2 Characters","bold":true},{"text":"\\nDolores McDoodle: ","bold":true},{"text":"a sturdy mother of two who has learned to cope in the harshest conditions thanks to a mostly happy marriage.","bold":false},{"text":"\\n• Has a keen eye for items that reduce insanity.","bold":false},{"text":"\\n• Talks about destroying radios in her sleep.","bold":false}]','[{"text":"Ted McDoodle: ","bold":true},{"text":"a father who believes himself to be a skilled salesman who has perfected the art of deal negotiating ... but Dolores would beg to differ.","bold":false},{"text":"\\n• Resistant to hunger.","bold":false},{"text":"\\n• Terrible at directions.","bold":false},{"text":"\\n• Allergic to cats.","bold":false}]','[{"text":"Mary Jane McDoodle: ","bold":true},{"text":"the eldest child who aspires to become a professional tuba player and often practises in private.","bold":false},{"text":"\\n• Adores food.","bold":false},{"text":"\\n• Allergic to radioactive waste... who knew?","bold":false},{"text":"\\n• Annoyed by checkers.","bold":false},{"text":"\\n• Has many dark secrets.","bold":false}]','[{"text":"Timothy McDoodle: ","bold":true},{"text":"the youngest child dedicated to all things adventure and cosmonaut. Besides drawing in inconvenient places, his immense passion for exploration has made him a proud member of the boy scouts.","bold":false},{"text":"\\n• Admires nature.","bold":false},{"text":"\\n• Skilled in first-aid.","bold":false}]','[{"text":"3 Status Effects","bold":true},{"text":"\\nFatigue: ","bold":true},{"text":"occurs after spending more than twenty days in the bunker and reduces expedition loot.","bold":false},{"text":"\\nHunger And Thirst: "},{"text":"characters die after not eating for eleven days or drinking for six days.","bold":false}]','[{"text":"Injuries: ","bold":true},{"text":"influenced by events and expeditions, causes sickness if untreated for twenty-eight days.","bold":false},{"text":"\\nInsanity: "},{"text":"continuous exposure to upsetting events makes characters insane, they will break items and flea within twenty to thirty-five days.","bold":false}]','[{"text":"Sickness: ","bold":true},{"text":"caused by radiation poisoning, malnutrition, and infections. Characters may die within fifteen to nineteen days. ","bold":false},{"text":"\\nTiredness: "},{"text":"occurs after returning from expeditions and is cured with constant feeding.","bold":false}]','[{"text":"Mutation: ","bold":true},{"text":"exposure to radioactive waste may transform Mary Jane into a powerful mutant that scares raiders and is never sick or thirsty. However, she may eat family members while starving, and cannot carry items to an expedition.","bold":false}]','[{"text":"4 Journal & Chest","bold":true},{"text":"\\nThe centre of the bunker has a chest menu that manages notices, feeding and healing, expeditions, and events. Note, only the player may use it and must confirm choices to start a new day and receive another part of the story.","bold":false}]','[{"text":"5 Expeditions","bold":true},{"text":"\\nExpeditions allow you to restock supplies and meet military personnel. Only one trip is possible at a time. Equipping items improves survival and loot. Frequent trips may attract raiders. Fallout is potentially fatal without a gas mask.","bold":false}]','[{"text":"6 Restart Scavenge","bold":true},{"text":"\\nReset the house layout. Only works while scavenging.\\n","color":"dark_red","bold":false},{"text":"\\nRestart","color":"dark_blue","bold":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/execute as @p[team=Playing] run function mc:timers/scavenge/restart_test"}}]','[{"text":"7 Quit Game","bold":true},{"text":"\\nQuit game and return to lobby. All progress will be lost!","color":"dark_red","bold":false},{"text":"\\n\\nQuit","color":"dark_blue","bold":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mc:utility/inventory/force_restart"}}]']} 1