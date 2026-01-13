# Sets worldborder size instantly in all dimensions
# Input: storage br:temp { size: <int> }

$execute in minecraft:overworld run worldborder set $(size) 0
$execute in minecraft:the_nether run worldborder set $(size) 0
$execute in minecraft:the_end run worldborder set $(size) 0
