execute store result score #remaining_time br.temp run scoreboard players get #wait_timer br.timer
scoreboard players operation #remaining_time br.temp *= #100 br.const
scoreboard players operation #remaining_time br.temp /= #wait_time br.config
execute store result bossbar br:border value run scoreboard players get #remaining_time br.temp