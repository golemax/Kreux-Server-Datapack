tellraw @s [{"text":"You have ","color":"red","bold":false},{"text":"CANCEL","color":"red","bold":true}]
tellraw @a[tag=authorize, tag=!RESET] [{"selector":"@s","color":"gold","bold":true},{"text":" have ","color":"red","bold":false},{"text":"CANCEL","color":"red","bold":true}]

#Delete Tag
tag @s remove RESET
tag @s remove DENY
tag @s remove OTHERSRESET
tag @s remove OTHERSDENY