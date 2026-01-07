scoreboard players set #team_green br.temp 0
scoreboard players set #team_yellow br.temp 0
scoreboard players set #team_blue br.temp 0
scoreboard players set #team_red br.temp 0

execute if entity @a[team=br.green,scores={br.player_state=0}] run scoreboard players set #team_green br.temp 1
execute if entity @a[team=br.yellow,scores={br.player_state=0}] run scoreboard players set #team_yellow br.temp 1
execute if entity @a[team=br.blue,scores={br.player_state=0}] run scoreboard players set #team_blue br.temp 1
execute if entity @a[team=br.red,scores={br.player_state=0}] run scoreboard players set #team_red br.temp 1

scoreboard players set #alive_teams br.temp 0
execute if score #team_green br.temp matches 1 run scoreboard players add #alive_teams br.temp 1
execute if score #team_yellow br.temp matches 1 run scoreboard players add #alive_teams br.temp 1
execute if score #team_blue br.temp matches 1 run scoreboard players add #alive_teams br.temp 1
execute if score #team_red br.temp matches 1 run scoreboard players add #alive_teams br.temp 1