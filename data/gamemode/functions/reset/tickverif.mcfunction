execute as @s[tag=authorize, tag=RESET] run function gamemode:reset/othersverif

execute as @s[tag=authorize, tag=DENY, tag=!RESET] run function gamemode:reset/playerdeny
execute as @s[tag=authorize, tag=DENY, tag=RESET] run function gamemode:reset/playercancel
execute as @s[tag=authorize, tag=OTHERSDENY, tag=!OTHERSRESET, tag=RESET] run function gamemode:reset/othersdeny

executeas @s[tag=authorize, tag=RESET, tag=!DENY, tag=OTHERSRESET, tag=!OTHERSDENY] run function gamemode:reset/reset

execute if data storage gamemode:config {authorizeplayernum:..1} as @s[tag=authorize, tag=RESET] run function gamemode:reset/notenoughplayersallowed