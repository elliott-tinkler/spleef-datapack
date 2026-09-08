scoreboard players set .spleefSetup flag 1
execute as @a run advancement revoke @s only spleef:join

# add scoreboard for flags (boolean values)
# This has been moved to the spleef:advancement/join function, otherwise the join function runs without setup

# add gameplay scoreboards
scoreboard objectives add timer dummy
scoreboard objectives add info dummy
scoreboard objectives add constant dummy
scoreboard objectives add random dummy

worldborder center 0.0 0.0
worldborder damage amount 0
worldborder set 32
worldborder warning distance 0

fill -16 0 -16 15 4 15 air
fill -16 -1 -16 15 -1 15 barrier

# fill space below the barrier
fill -16 -2 -16 15 -32 15 air
fill -16 -33 -16 15 -64 15 air

gamerule block_drops false
gamerule immediate_respawn true

difficulty peaceful

team add player
team modify player prefix {"color":"blue","text":"UML "}

bossbar add spleef:ccc "UML CLOUD COMPUTING CLUB"
bossbar set spleef:ccc color blue
bossbar set spleef:ccc max 1
bossbar set spleef:ccc value 1
