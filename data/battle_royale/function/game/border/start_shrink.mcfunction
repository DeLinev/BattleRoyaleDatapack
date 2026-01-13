# Starts a new shrinking phase
# Announces to players and sets up shrink timer

# Calculate target border size after shrinking
scoreboard players operation #target_size br.temp = #border_curr br.temp
scoreboard players operation #shrink_total br.temp = #shrink_step br.config
scoreboard players operation #shrink_total br.temp *= #shrink_time br.config
scoreboard players operation #target_size br.temp -= #shrink_total br.temp

# Clamp to minimum border size
execute if score #target_size br.temp < #border_min br.config run scoreboard players operation #target_size br.temp = #border_min br.config

# Announce to players
tellraw @a [{"text":"[","color":"gray"},{"text":"Battle Royale","color":"gold","bold":true},{"text":"] ","color":"gray"},{"text":"The safe area will shrink to ","color":"yellow"},{"score":{"name":"#target_size","objective":"br.temp"},"color":"gold"},{"text":" blocks.","color":"yellow"}]

# Set bossbar to shrinking state
bossbar set br:border name {"text":"⚠ The area is shrinking... ⚠","color":"red"}
bossbar set br:border color red
bossbar set br:border value 100

# Start shrink timer
scoreboard players operation #border_timer br.timer = #shrink_time br.config
scoreboard players set #wait_timer br.timer 0
