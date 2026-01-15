# Display current configuration values to admin

tellraw @s [{"text":"═══════ ","color":"dark_gray"},{"text":"Battle Royale Config","color":"gold","bold":true},{"text":" ═══════","color":"dark_gray"}]

tellraw @s [{"text":"  Border Initial: ","color":"gray"},{"score":{"name":"#border_initial","objective":"br.config"},"color":"yellow"},{"text":" blocks","color":"dark_gray"}]
tellraw @s [{"text":"  Border Minimum: ","color":"gray"},{"score":{"name":"#border_min","objective":"br.config"},"color":"yellow"},{"text":" blocks","color":"dark_gray"}]
tellraw @s [{"text":"  Shrink Time: ","color":"gray"},{"score":{"name":"#shrink_time","objective":"br.config"},"color":"yellow"},{"text":" seconds","color":"dark_gray"}]
tellraw @s [{"text":"  Wait Time: ","color":"gray"},{"score":{"name":"#wait_time","objective":"br.config"},"color":"yellow"},{"text":" seconds","color":"dark_gray"}]
tellraw @s [{"text":"  Shrink Step: ","color":"gray"},{"score":{"name":"#shrink_step","objective":"br.config"},"color":"yellow"},{"text":" blocks","color":"dark_gray"}]
tellraw @s [{"text":"  Countdown: ","color":"gray"},{"score":{"name":"#countdown_time","objective":"br.config"},"color":"yellow"},{"text":" seconds","color":"dark_gray"}]
tellraw @s [{"text":"  Ending Time: ","color":"gray"},{"score":{"name":"#ending_time","objective":"br.config"},"color":"yellow"},{"text":" seconds","color":"dark_gray"}]
tellraw @s [{"text":"  Min Players: ","color":"gray"},{"score":{"name":"#min_players","objective":"br.config"},"color":"yellow"}]

tellraw @s [{"text":"═══════════════════════════════════","color":"dark_gray"}]
tellraw @s [{"text":"  Set value: ","color":"gray"},{"text":"/scoreboard players set #input br.temp <value>","color":"aqua","click_event": {"action":"suggest_command","command":"/scoreboard players set #input br.temp "}}]
tellraw @s [{"text":"  Then run: ","color":"gray"},{"text":"/function battle_royale:config/set/<name>","color":"aqua"}]
