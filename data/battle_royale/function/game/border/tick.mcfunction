# Main border tick - called every second during active game
# Manages the border shrink cycle: wait → shrink → wait → shrink...

# Step 1: Check current border state
function battle_royale:game/border/check_state

# Step 2: Handle final state (border at minimum)
execute if score #border_above_min br.temp matches 0 run function battle_royale:game/border/phase_final

# Step 3: Handle waiting phase (countdown before shrinking)
execute if score #border_above_min br.temp matches 1 if score #wait_timer br.timer matches 1.. run function battle_royale:game/border/phase_wait

# Step 4: Start shrinking when wait ends and no active shrink
execute if score #border_above_min br.temp matches 1 if score #wait_timer br.timer matches ..0 if score #border_timer br.timer matches ..0 run function battle_royale:game/border/start_shrink

# Step 5: Handle active shrinking phase
execute if score #border_above_min br.temp matches 1 if score #border_timer br.timer matches 1.. run function battle_royale:game/border/phase_shrink

# Step 6: Start new wait phase when shrinking ends
execute if score #border_above_min br.temp matches 1 if score #border_timer br.timer matches 0 if score #wait_timer br.timer matches ..0 run function battle_royale:game/border/start_wait
