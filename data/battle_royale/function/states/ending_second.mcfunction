scoreboard players remove #ending_timer br.timer 1

title @a actionbar [{"text":"Returning to lobby in ","color":"gray"},{"score":{"name":"#ending_timer","objective":"br.timer"},"color":"gold","bold":true},{"text":" seconds...","color":"gray"}]

# execute as @a[tag=br.winner] at @s if predicate battle_royale:random_30_percent run summon firework_rocket ~ ~ ~ {LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;255,65535,16711935],has_twinkle:1b}],flight_duration:2b}}}}

execute if score #ending_timer br.timer matches 0 run function battle_royale:admin/return_to_lobby
