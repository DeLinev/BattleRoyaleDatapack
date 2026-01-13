# Shrinks worldborder by step amount over 2 seconds in all dimensions
# Input: storage br:temp { step: <int> }

$execute in minecraft:overworld run worldborder add -$(step) 2
$execute in minecraft:the_nether run worldborder add -$(step) 2
$execute in minecraft:the_end run worldborder add -$(step) 2
