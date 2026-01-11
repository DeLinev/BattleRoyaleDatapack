execute store result score #remaining_time br.temp run data get storage br:temp remaining_time
scoreboard players operation #remaining_time br.temp *= #100 br.const
execute store result score #all_time br.temp run data get storage br:temp all_time
scoreboard players operation #remaining_time br.temp /= #all_time br.temp
execute store result bossbar br:border value run scoreboard players get #remaining_time br.temp