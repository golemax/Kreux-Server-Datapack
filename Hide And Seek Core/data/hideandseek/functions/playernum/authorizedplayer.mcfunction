scoreboard objectives add authorizeplayernum dummy
execute as @a[tag=authorize] run scoreboard players add @a authorizeplayernum 1
execute store result storage hideandseek:config authorizeplayernum int 1 run scoreboard players get @a[limit=1] authorizeplayernum
scoreboard objectives remove authorizeplayernum