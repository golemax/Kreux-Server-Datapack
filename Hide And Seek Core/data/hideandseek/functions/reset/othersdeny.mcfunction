tellraw @s [{"text":"The others have ","color":"red","bold":false},{"text":"DENY","color":"red","bold":true}]
tellraw @a[tag=authorize, tag=!RESET] [{"text":"A authorized person have ","color":"red","bold":false},{"text":"DENY","color":"red","bold":true}]

#Delete Tag
tag @s remove RESET
tag @s remove DENY
tag @s remove OTHERSRESET
tag @s remove OTHERSDENY