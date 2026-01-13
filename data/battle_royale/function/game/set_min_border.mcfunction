# DEPRECATED: This file has been refactored into game/border/worldborder_set.mcfunction
# Keeping for backwards compatibility - redirects to new location
# Note: Old function expected 'border_min' macro, new function expects 'size'
execute store result storage br:temp size int 1 run data get storage br:temp border_min
function battle_royale:game/border/worldborder_set with storage br:temp