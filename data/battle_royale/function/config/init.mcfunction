# Initialize config values - only sets defaults if they don't already exist
# Called on datapack load, preserves existing values (persistence)

execute unless score #border_initial br.config matches -2147483648.. run scoreboard players set #border_initial br.config 3000
execute unless score #border_min br.config matches -2147483648.. run scoreboard players set #border_min br.config 100
execute unless score #shrink_time br.config matches -2147483648.. run scoreboard players set #shrink_time br.config 120
execute unless score #wait_time br.config matches -2147483648.. run scoreboard players set #wait_time br.config 300
execute unless score #shrink_step br.config matches -2147483648.. run scoreboard players set #shrink_step br.config 6
execute unless score #countdown_time br.config matches -2147483648.. run scoreboard players set #countdown_time br.config 10
execute unless score #ending_time br.config matches -2147483648.. run scoreboard players set #ending_time br.config 30
execute unless score #min_players br.config matches -2147483648.. run scoreboard players set #min_players br.config 2
