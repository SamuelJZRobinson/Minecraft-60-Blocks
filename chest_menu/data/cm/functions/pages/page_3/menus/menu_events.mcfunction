# Notes
  # submit controls event output so all code runs in one script

# Atomic Drill
  # Eat Family Hamster
  execute if score event MenuEvent matches 1 run function cm:pages/page_3/menus/atomic_drill/menu_event_1
  # Choose Daily Agenda
  execute if score event MenuEvent matches 2 run function cm:pages/page_3/menus/atomic_drill/menu_event_2
  # Visited By An Imposter
  execute if score event MenuEvent matches 3 run function cm:pages/page_3/menus/atomic_drill/menu_event_3
  # Visited By The Military
  execute if score event MenuEvent matches 4 run function cm:pages/page_3/menus/atomic_drill/menu_event_4

# Mary Mutate Request
# Should Be Prompted By Events
# function cm:pages/submit/events/mary_mutate_request