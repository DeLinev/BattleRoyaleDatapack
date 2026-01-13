# Handles waiting phase countdown (before shrinking begins)
# Decrements wait timer and updates bossbar

scoreboard players remove #wait_timer br.timer 1

# Update bossbar with wait progress
execute store result storage br:temp remaining_time int 1 run scoreboard players get #wait_timer br.timer
execute store result storage br:temp all_time int 1 run scoreboard players get #wait_time br.config
function battle_royale:game/border/update_bossbar with storage br:temp
