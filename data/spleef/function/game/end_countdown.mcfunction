execute as @a run attribute @s minecraft:block_interaction_range modifier add spleef:range_setting 4.5 add_value
execute as @a run attribute @s minecraft:entity_interaction_range modifier add spleef:range_setting 4.5 add_value

effect give @a minecraft:resistance infinite 4 true

# player feedback
title @a actionbar "Spleef has begun! Good luck!"

tag @a add alive
