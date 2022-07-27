execute as @s[tag=authorize, tag=RESET, tag=!DENY, tag=!OTHERSVERIFDEMAND] run function hideandseek:reset/othersverif

execute as @s[tag=authorize, tag=DENY, tag=!RESET] run function hideandseek:reset/playerdeny
execute as @s[tag=authorize, tag=DENY, tag=RESET] run function hideandseek:reset/playercancel
execute as @s[tag=authorize, tag=RESET, tag=!DENY, tag=!OTHERSRESET, tag=OTHERSDENY] run function hideandseek:reset/othersdeny

execute as @s[tag=authorize, tag=RESET, tag=!DENY, tag=OTHERSRESET, tag=!OTHERSDENY] run function hideandseek:reset/reset

execute store result score @s tempo run data get storage hideandseek:config authorizeplayernum
execute if score @s tempo matches 2.. as @s[tag=authorize, tag=RESET, tag=!DENY, tag=!OTHERSRESET, tag=!OTHERSDENY] run function hideandseek:reset/notenoughplayersallowed
scoreboard players set @s tempo 0