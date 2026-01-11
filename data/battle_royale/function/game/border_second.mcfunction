execute store result score #border_curr br.temp in minecraft:overworld run worldborder get
scoreboard players operation #temp br.temp = #border_curr br.temp
scoreboard players operation #temp br.temp -= #border_min br.config

# If the border has reached or gone below the minimum, lock it and stop timers
execute if score #border_curr br.temp <= #border_min br.config run bossbar set br:border name {"text":"⚠ Final safe zone reached ⚠","color": "red"}
execute if score #border_curr br.temp <= #border_min br.config run bossbar set br:border color red
execute if score #border_curr br.temp <= #border_min br.config run bossbar set br:border value 100
execute if score #border_curr br.temp <= #border_min br.config run scoreboard players set #wait_timer br.timer 0
execute if score #border_curr br.temp <= #border_min br.config run scoreboard players set #border_timer br.timer 0

# Waiting phase: countdown and show bossbar progress
execute if score #border_curr br.temp > #border_min br.config if score #wait_timer br.timer matches 1.. run scoreboard players remove #wait_timer br.timer 1
execute if score #border_curr br.temp > #border_min br.config if score #wait_timer br.timer matches 1.. run execute store result storage br:temp remaining_time int 1 run scoreboard players get #wait_timer br.timer
execute if score #border_curr br.temp > #border_min br.config if score #wait_timer br.timer matches 1.. run execute store result storage br:temp all_time int 1 run scoreboard players get #wait_time br.config
execute if score #border_curr br.temp > #border_min br.config if score #wait_timer br.timer matches 1.. run function battle_royale:game/update_bossbar with storage br:temp

# When not waiting and not currently shrinking, start a new shrinking stage
execute if score #border_curr br.temp > #border_min br.config if score #wait_timer br.timer matches ..0 if score #border_timer br.timer matches ..0 run function battle_royale:game/border_shrink_start

# Shrinking phase: decrement timer and move the world border inwards each second
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 1.. run scoreboard players remove #border_timer br.timer 1
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 1.. run execute store result storage br:temp remaining_time int 1 run scoreboard players get #border_timer br.timer
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 1.. run execute store result storage br:temp all_time int 1 run scoreboard players get #shrink_time br.config
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 1.. run function battle_royale:game/update_bossbar with storage br:temp
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 1.. if score #temp br.temp > #shrink_step br.config run execute store result storage br:temp step int 1 run scoreboard players get #shrink_step br.config
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 1.. if score #temp br.temp > #shrink_step br.config run function battle_royale:game/shrink_border with storage br:temp
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 1.. unless score #temp br.temp > #shrink_step br.config in minecraft:overworld run worldborder set 50 0
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 1.. unless score #temp br.temp > #shrink_step br.config in minecraft:the_nether run worldborder set 50 0
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 1.. unless score #temp br.temp > #shrink_step br.config in minecraft:the_end run worldborder set 50 0

# When the shrinking timer ends and the border is still above minimum, start the next waiting phase
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 0 if score #wait_timer br.timer matches ..0 run scoreboard players operation #wait_timer br.timer = #wait_time br.config
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 0 if score #wait_timer br.timer = #wait_time br.config run bossbar set br:border name {"text":"⚠ The area will soon begin to shrink... ⚠","color":"dark_purple"}
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 0 if score #wait_timer br.timer = #wait_time br.config run bossbar set br:border color purple
execute if score #border_curr br.temp > #border_min br.config if score #border_timer br.timer matches 0 if score #wait_timer br.timer = #wait_time br.config run bossbar set br:border value 100