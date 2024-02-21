# Notes
  # Reference cm:pages/page_3/event_guide to understand each event
  # submit controls the output of events so they run in one script when necessary
  # Decisions from atomic drill events are not counted in GameStatus

# Atomic Drill
execute if score event MenuEvent matches 1 run function cm:pages/page_3/events/event_1
execute if score event MenuEvent matches 2 run function cm:pages/page_3/events/event_2
execute if score event MenuEvent matches 3 run function cm:pages/page_3/events/event_3
execute if score event MenuEvent matches 4 run function cm:pages/page_3/events/event_4

# Mary Mutate Request
execute if score mutateRequest MenuEvent matches 1 if score alive MaryStatus matches 1 run function cm:pages/submit/events/mary_mutate_request