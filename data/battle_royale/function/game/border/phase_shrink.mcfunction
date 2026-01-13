# Handles active shrinking phase
# Decrements border timer, updates bossbar, and shrinks border

scoreboard players remove #border_timer br.timer 1

# Update bossbar with shrink progress
execute store result storage br:temp remaining_time int 1 run scoreboard players get #border_timer br.timer
execute store result storage br:temp all_time int 1 run scoreboard players get #shrink_time br.config
function battle_royale:game/border/update_bossbar with storage br:temp

# Calculate remaining border distance above minimum
scoreboard players operation #border_remaining br.temp = #border_curr br.temp
scoreboard players operation #border_remaining br.temp -= #border_min br.config

# If remaining distance > shrink_step: shrink by step
# Otherwise: snap to minimum
execute if score #border_remaining br.temp > #shrink_step br.config run execute store result storage br:temp step int 1 run scoreboard players get #shrink_step br.config
execute if score #border_remaining br.temp > #shrink_step br.config run function battle_royale:game/border/worldborder_shrink with storage br:temp

execute unless score #border_remaining br.temp > #shrink_step br.config run execute store result storage br:temp size int 1 run scoreboard players get #border_min br.config
execute unless score #border_remaining br.temp > #shrink_step br.config run function battle_royale:game/border/worldborder_set with storage br:temp
