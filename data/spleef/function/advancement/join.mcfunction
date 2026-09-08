execute unless score .spleefSetup flag matches 1 run return fail
execute if entity @s[tag=join] run return fail

tag @s add join
tp @s 0 0 0 0 0
spawnpoint @s 0 0 0

attribute @s minecraft:block_break_speed base set 100
attribute @s minecraft:block_interaction_range base set 0
attribute @s minecraft:entity_interaction_range base set 0
attribute @s minecraft:safe_fall_distance base set 64

team join player @s

bossbar set spleef:ccc players @s
