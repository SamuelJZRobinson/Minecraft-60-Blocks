# Notes
  # Reference cm:menu/page2/event_guide to understand each event
  # submit controls the output of events so they run in one script when necessary
  # Decisions from atomic drill events are not counted in GameStatus

# Atomic Drill
execute if score event ChestMenuEvent matches 1 run function cm:menu/page3/events/event1
execute if score event ChestMenuEvent matches 2 run function cm:menu/page3/events/event2
execute if score event ChestMenuEvent matches 3 run function cm:menu/page3/events/event3
execute if score event ChestMenuEvent matches 4 run function cm:menu/page3/events/event4

# Mary Mutate Request
execute if score mutateRequest ChestMenuEvent matches 1 if score alive MaryStatus matches 1 run function cm:menu/submit/mutate_request