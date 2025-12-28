setworldspawn 0 201 0
gamerule respawn_radius 0

scoreboard objectives add globals dummy
execute unless score #game_state globals matches 0..1 run scoreboard players set #game_state globals 0
scoreboard players set #teams_count globals 2

function mypack:teams/remove_all_teams
team add TeamYellow "Yellow Team"
team modify TeamYellow color yellow
team add TeamGreen "Green Team"
team modify TeamGreen color green

say "World was set up successfully"