# Stop if we already have the minimum number of teams (e.g., 2)
execute if score #teams_count br.teams matches 2 run tellraw @a {"text":"Min teams reached!","color":"red"}
execute if score #teams_count br.teams matches 2 run return 0

execute if score #teams_count br.teams matches 3 run team remove br.blue
# Remove the sign
execute if score #teams_count br.teams matches 3 as @e[type=marker,tag=br.anchor_block,limit=1] at @s run setblock ~1 ~ ~3 air
# Remove the wool
execute if score #teams_count br.teams matches 3 as @e[type=marker,tag=br.anchor_block,limit=1] at @s run setblock ~ ~ ~3 air

execute if score #teams_count br.teams matches 4 run team remove br.red
# Remove the sign
execute if score #teams_count br.teams matches 4 as @e[type=marker,tag=br.anchor_block,limit=1] at @s run setblock ~1 ~ ~4 air
# Remove the wool
execute if score #teams_count br.teams matches 4 as @e[type=marker,tag=br.anchor_block,limit=1] at @s run setblock ~ ~ ~4 air

scoreboard players remove #teams_count br.teams 1

tellraw @a {"text":"Removed a team!","color":"dark_red"}