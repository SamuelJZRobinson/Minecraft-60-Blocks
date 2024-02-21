# Notes
  # submit controls event output so all code runs in one script

# Atomic Drill
  # Eat Family Hamster
  execute if score event MenuEvent matches 1 run function cm:pages/page_3/menus/menu_events_event_1
  # Choose Daily Agenda
  execute if score event MenuEvent matches 2 run function cm:pages/page_3/menus/menu_events_event_2
  # Visited By An Imposter
  execute if score event MenuEvent matches 3 run function cm:pages/page_3/menus/menu_events_event_3
  # Visited By The Military
  execute if score event MenuEvent matches 4 run function cm:pages/page_3/menus/menu_events_event_4

# Mary Mutate Request
execute if score mutateRequest MenuEvent matches 1 if score alive MaryStatus matches 1 run function cm:pages/submit/events/mary_mutate_request