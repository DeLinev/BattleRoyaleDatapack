# Reset game to LOBBY state
scoreboard players set #state br.gamestate 0

# Load lobby structure
forceload add -4 -6 8 6
place template battle_royale:lobby_base -4 200 -6
kill @e[type=item]

scoreboard players set #ticks br.tick 0
scoreboard players set #countdown br.timer 0
scoreboard players set #border_timer br.timer 0
scoreboard players set #ending_timer br.timer 0
scoreboard players set #teams_count br.teams 2
scoreboard players set Alive br.players_count 0
scoreboard players set Dead br.players_count 0
scoreboard players set #temp br.temp 0
scoreboard players set #alive_teams br.temp 0
scoreboard players set #alive_players br.temp 0
scoreboard players set #ending_init br.temp 0

scoreboard players reset * br.kills
scoreboard players reset * br.deaths
scoreboard players reset * br.team
scoreboard players reset * br.player_state

team leave @a
clear @a[tag=!br.admin]
effect give @a regeneration 1 255 true
effect give @a saturation 1 255 true
gamemode creative @a[tag=br.admin]

scoreboard players set #team_red br.temp 0
scoreboard players set #team_blue br.temp 0
scoreboard players set #team_green br.temp 0
scoreboard players set #team_yellow br.temp 0

# Reset world border
execute in minecraft:overworld run worldborder center 0 0
execute in minecraft:overworld run worldborder set 5000 0

bossbar set br:border visible false
bossbar set br:border value 100

scoreboard objectives setdisplay sidebar

title @a clear
title @a reset

gamemode adventure @a[gamemode=!creative]

# tag @a remove br.alive
tag @a remove br.dead
tag @a remove br.winner
tag @a remove br.has_team

tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"Game reset! Returned to lobby.","color":"aqua"}]
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1.5
