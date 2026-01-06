scoreboard players set @s br.deaths 0

scoreboard players set @s br.player_state 1
gamemode spectator @s

scoreboard players add Dead br.players_count 1
scoreboard players remove Alive br.players_count 1

tellraw @s {"text":"Tip: Press number keys (1-9) to teleport to other players while spectating!","color":"gray","italic":true}
