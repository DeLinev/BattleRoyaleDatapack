bossbar set br:border name {"text":"⚠ The area is shrinking... ⚠","color":"red"}
bossbar set br:border color red
bossbar set br:border value 100

# Start a new shrinking stage: reset timers based on config
scoreboard players operation #border_timer br.timer = #shrink_time br.config
scoreboard players set #wait_timer br.timer 0


