# do not run unless spleef has been set up
execute unless score .spleefSetup flag matches 1 run return fail

# other timer functions
scoreboard players add .10tick timer 1
scoreboard players add .20tick timer 1

execute if score .10tick timer matches 10.. run function spleef:time/10tick
execute if score .20tick timer matches 20.. run function spleef:time/20tick

execute if score .countdown flag matches 1 run function spleef:game/countdown

execute at @e[type=snowball] run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~1 ~0.5 air replace snow_block
