damage @s 64 minecraft:out_of_world
tag @s remove alive

execute store result score .playerCount info run execute if entity @a[tag=alive]
execute if score .playerCount info matches 1 as @a[tag=alive] run function spleef:game/victory
