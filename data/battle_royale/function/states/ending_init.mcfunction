scoreboard players set #ending_init br.temp 1

# Tag winners
tag @a[tag=br.alive] add br.winner

# Announce winner by team
execute if entity @a[tag=br.winner,team=br.red] run tellraw @a [{"text":"\n"},{"text":"══════════════════════════════","color":"gold"},{"text":"\n"},{"text":"      🏆 ","color":"yellow"},{"text":"RED TEAM WINS!","color":"red","bold":true},{"text":" 🏆","color":"yellow"},{"text":"\n"},{"text":"══════════════════════════════","color":"gold"},{"text":"\n"}]
execute if entity @a[tag=br.winner,team=br.blue] run tellraw @a [{"text":"\n"},{"text":"══════════════════════════════","color":"gold"},{"text":"\n"},{"text":"      🏆 ","color":"yellow"},{"text":"BLUE TEAM WINS!","color":"blue","bold":true},{"text":" 🏆","color":"yellow"},{"text":"\n"},{"text":"══════════════════════════════","color":"gold"},{"text":"\n"}]
execute if entity @a[tag=br.winner,team=br.green] run tellraw @a [{"text":"\n"},{"text":"══════════════════════════════","color":"gold"},{"text":"\n"},{"text":"      🏆 ","color":"yellow"},{"text":"GREEN TEAM WINS!","color":"green","bold":true},{"text":" 🏆","color":"yellow"},{"text":"\n"},{"text":"══════════════════════════════","color":"gold"},{"text":"\n"}]
execute if entity @a[tag=br.winner,team=br.yellow] run tellraw @a [{"text":"\n"},{"text":"══════════════════════════════","color":"gold"},{"text":"\n"},{"text":"      🏆 ","color":"yellow"},{"text":"YELLOW TEAM WINS!","color":"yellow","bold":true},{"text":" 🏆","color":"yellow"},{"text":"\n"},{"text":"══════════════════════════════","color":"gold"},{"text":"\n"}]

title @a[tag=br.winner] title {"text":"VICTORY!","color":"gold","bold":true}
title @a[tag=br.winner] subtitle {"text":"Your team has won the Battle Royale!","color":"yellow"}
title @a[tag=!br.winner] title {"text":"GAME OVER","color":"gray"}
title @a[tag=!br.winner] subtitle {"text":"Better luck next time!","color":"dark_gray"}

playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup master @a[tag=br.winner] ~ ~ ~ 1 0.8

# execute as @a[tag=br.winner] at @s run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16711680,16776960,65280],has_trail:1b}],flight_duration:1b}}}}

execute store result score #ending_timer br.timer run scoreboard players get #ending_time br.config

bossbar set br:border visible false
scoreboard objectives setdisplay sidebar
