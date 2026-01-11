execute store result score #border_curr br.temp in minecraft:overworld run worldborder get
scoreboard players operation #temp br.temp = #border_curr br.temp
scoreboard players operation #shrink_amount br.temp = #shrink_step br.config
scoreboard players operation #shrink_amount br.temp *= #shrink_time br.config
scoreboard players operation #temp br.temp -= #shrink_amount br.temp
execute if score #temp br.temp < #border_min br.config run scoreboard players operation #temp br.temp = #border_min br.config

tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"The safe area will shrink to ","color":"yellow"},{"score":{"name":"#temp","objective":"br.temp"},"color":"gold"},{"text":" blocks.","color":"yellow"}]

bossbar set br:border name {"text":"⚠ The area is shrinking... ⚠","color":"red"}
bossbar set br:border color red
bossbar set br:border value 100

# Start a new shrinking stage: reset timers based on config
scoreboard players operation #border_timer br.timer = #shrink_time br.config
scoreboard players set #wait_timer br.timer 0


