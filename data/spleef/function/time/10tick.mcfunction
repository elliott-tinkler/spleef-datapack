# run every 10 ticks
scoreboard players set .10tick timer 0

# 10tick functions
execute as @a positioned as @s if predicate spleef:void run function spleef:game/death

item replace entity @a[tag=alive] weapon.mainhand with snowball[use_cooldown={seconds:0.5,cooldown_group:"spleef:snowball"}] 1
