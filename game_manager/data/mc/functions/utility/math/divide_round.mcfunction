# Get Last Digit
scoreboard players operation lastDigit Math = out Math
scoreboard players operation lastDigit Math %= divisor Math

# Shift Decimal Left And Carry
scoreboard players operation out Math /= divisor Math
execute if score lastDigit Math matches 5.. run scoreboard players add out Math 1

# Loop
scoreboard players remove placesLeft Math 1
execute unless score placesLeft Math matches ..0 run function mc:utility/math/divide_round