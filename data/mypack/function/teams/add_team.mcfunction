# Stop if we already have the maximum number of teams (e.g., 4)
execute if score #teams_count globals matches 4 run tellraw @a {"text":"Max teams reached!","color":"red"}
execute if score #teams_count globals matches 4 run return 0

# Increment the counter
scoreboard players add #teams_count globals 1

execute if score #teams_count globals matches 3 run team add TeamBlue "Blue Team"
execute if score #teams_count globals matches 3 run team modify TeamBlue color blue
execute if score #teams_count globals matches 3 positioned -3 201 -2 run function mypack:teams/create_team_block { \
  offset:3, \
  wool:"minecraft:blue_wool", \
  sign:"minecraft:oak_wall_sign", \
  team:"TeamBlue", \
  team_name:"Blue Team", \
  color:"blue" \
}

execute if score #teams_count globals matches 4 run team add TeamRed "Red Team"
execute if score #teams_count globals matches 4 run team modify TeamRed color red
execute if score #teams_count globals matches 4 positioned -3 201 -2 run function mypack:teams/create_team_block { \
  offset:4, \
  wool:"minecraft:red_wool", \
  sign:"minecraft:oak_wall_sign", \
  team:"TeamRed", \
  team_name:"Red Team", \
  color:"dark_red" \
}


tellraw @a {"text":"Added a team!","color":"green"}