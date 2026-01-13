# Checks current border state and stores results for phase logic
# Sets up: #border_curr, #border_above_min (1 if above minimum, 0 if at/below)

# Get current border size
execute store result score #border_curr br.temp in minecraft:overworld run worldborder get

# Check if border is above minimum (1 = yes, 0 = no)
scoreboard players set #border_above_min br.temp 0
execute if score #border_curr br.temp > #border_min br.config run scoreboard players set #border_above_min br.temp 1
