# Bugged at the moment, may fix later
# scoreboard objectives remove blocks_broken
# scoreboard objectives add blocks_broken minecraft.mined:minecraft:snow_block "Blocks broken"
# scoreboard objectives setdisplay sidebar blocks_broken

clear @a

execute as @a run attribute @s minecraft:block_interaction_range modifier remove spleef:range_setting
execute as @a run attribute @s minecraft:entity_interaction_range modifier remove spleef:range_setting

# set the stage. three layers
# top layer
fill -16 -16 -16 15 -16 15 snow_block

# middle layer
fill -16 -32 -16 15 -32 15 snow_block

# bottom layer
fill -16 -48 -16 15 -48 15 snow_block

# teleport players to stage
spreadplayers 0.0 0.0 16 16 under -1 true @a

# enter a 5 second countdown
scoreboard players set .countdown flag 1
scoreboard players set .start timer 100

# player feedback
title @a actionbar "Spleef will begin in 5 seconds!"
