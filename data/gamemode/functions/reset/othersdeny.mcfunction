execute as @s[tag=authorize, tag=OTHERSDENY, tag=!OTHERSRESET] run tellraw @s [{"text":"The others have ","color":"red","bold":false},{"text":"DENY","color":"red","bold":true}]
execute as @s[tag=authorize, tag=OTHERSDENY, tag=!OTHERSRESET] run tellraw @a[tag=authorize, tag=!RESET] [{"text":"A authorized have ","color":"red","bold":false},{"text":"DENY","color":"red","bold":true}]

execute as @s[tag=authorize, tag=OTHERSDENY, tag=!OTHERSRESET] run tag @s remove RESET