# Starts a new waiting phase (pause before next shrink)
# Sets up bossbar and wait timer

bossbar set br:border name {"text":"⚠ The area will soon begin to shrink... ⚠","color":"dark_purple"}
bossbar set br:border color purple
bossbar set br:border value 100

# Start wait timer
scoreboard players operation #wait_timer br.timer = #wait_time br.config
