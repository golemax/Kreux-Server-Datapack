execute as @s[tag=authorize, tag=RESET] run function gamemode:reset/othersverif
execute as @s[tag=authorize, tag=NORESET] run function gamemode:reset/playerdeny
execute as @s[tag=authorize, tag=RESET] run function gamemode:reset/playerverif
function gamemode:reset/notenoughplayersallowed