# Stop if we already have the minimum number of teams (e.g., 2)
execute if score #teams_count globals matches 2 run tellraw @a {"text":"Min teams reached!","color":"red"}
execute if score #teams_count globals matches 2 run return 0

execute if score #teams_count globals matches 3 run team remove TeamBlue
# Remove the sign
execute if score #teams_count globals matches 3 positioned -3 201 -2 run setblock ~1 ~ ~3 air
# Remove the wool
execute if score #teams_count globals matches 3 positioned -3 201 -2 run setblock ~ ~ ~3 air

execute if score #teams_count globals matches 4 run team remove TeamRed
# Remove the sign
execute if score #teams_count globals matches 4 positioned -3 201 -2 run setblock ~1 ~ ~4 air
# Remove the wool
execute if score #teams_count globals matches 4 positioned -3 201 -2 run setblock ~ ~ ~4 air

scoreboard players remove #teams_count globals 1

tellraw @a {"text":"Removed a team!","color":"dark_red"}