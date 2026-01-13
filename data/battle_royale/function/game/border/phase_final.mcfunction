# Handles final state when border has reached minimum size
# Called when border <= border_min

bossbar set br:border name {"text":"⚠ Final safe zone reached ⚠","color":"red"}
bossbar set br:border color red
bossbar set br:border value 100

# Stop all timers
scoreboard players set #wait_timer br.timer 0
scoreboard players set #border_timer br.timer 0
