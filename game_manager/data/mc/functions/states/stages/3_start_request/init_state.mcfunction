# Notes
  # @s commands will only target the player clicking the sign in this first script.

# Setup Players
### Everyone else remains in Lobby team and gets set to spectator or Enemy later if updated
team join Playing @s
scoreboard players set @s ChestMenuMain 0
clear @a

# Run Tests
function mc:states/stages/3_start_request/tests/manage_tests