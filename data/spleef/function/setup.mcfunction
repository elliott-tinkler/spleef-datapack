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
worldborder set 38
worldborder warning distance 0

# fill space above the barrier
fill -18 0 -18 17 24 17 air
fill -18 25 -18 17 48 17 air
fill -18 49 -18 17 72 17 air
fill -18 73 -18 17 96 17 air

# place spectator stand
fill -18 -1 -18 17 -1 17 barrier

# fill space below the barrier
fill -18 -2 -18 17 -26 17 air
fill -16 -27 -16 15 -51 15 air
fill -16 -51 -16 15 -64 15 air

# add walls
fill 18 64 -19 -19 -64 -19 glass
fill -19 64 -19 -19 -64 18 glass
fill -19 64 18 18 -64 18 glass
fill 18 64 18 18 -64 -19 glass

gamerule block_drops false
gamerule immediate_respawn true

difficulty peaceful

team add player
team modify player prefix {"color":"blue","text":"UML "}

bossbar add spleef:ccc "UML CLOUD COMPUTING CLUB"
bossbar set spleef:ccc color blue
bossbar set spleef:ccc max 1
bossbar set spleef:ccc value 1
