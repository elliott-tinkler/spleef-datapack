# countdown from 5 seconds
execute if score .start timer matches 1.. run return run scoreboard players remove .start timer 1

# start game after 5 seconds
scoreboard players set .countdown flag 0
function spleef:game/end_countdown
