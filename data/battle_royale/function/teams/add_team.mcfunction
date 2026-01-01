# Stop if we already have the maximum number of teams (e.g., 4)
execute if score #teams_count br.teams matches 4 run tellraw @a {"text":"Max teams reached!","color":"red"}
execute if score #teams_count br.teams matches 4 run return 0

# Increment the counter
scoreboard players add #teams_count br.teams 1

execute if score #teams_count br.teams matches 3 run team add br.blue "Blue Team"
execute if score #teams_count br.teams matches 3 run team modify br.blue color blue
execute if score #teams_count br.teams matches 3 run team modify br.blue friendlyFire false
execute if score #teams_count br.teams matches 3 run team modify br.blue seeFriendlyInvisibles true
execute if score #teams_count br.teams matches 3 as @e[type=marker,tag=br.anchor_block,limit=1] at @s run function battle_royale:teams/create_team_block { \
  offset:3, \
  wool:"minecraft:blue_wool", \
  sign:"minecraft:oak_wall_sign", \
  team:"br.blue", \
  team_name:"Blue Team", \
  color:"blue" \
}

execute if score #teams_count br.teams matches 4 run team add br.red "Red Team"
execute if score #teams_count br.teams matches 4 run team modify br.red color red
execute if score #teams_count br.teams matches 4 run team modify br.red friendlyFire false
execute if score #teams_count br.teams matches 4 run team modify br.red seeFriendlyInvisibles true
execute if score #teams_count br.teams matches 4 as @e[type=marker,tag=br.anchor_block,limit=1] at @s run function battle_royale:teams/create_team_block { \
  offset:4, \
  wool:"minecraft:red_wool", \
  sign:"minecraft:oak_wall_sign", \
  team:"br.red", \
  team_name:"Red Team", \
  color:"dark_red" \
}


tellraw @a {"text":"Added a team!","color":"green"}