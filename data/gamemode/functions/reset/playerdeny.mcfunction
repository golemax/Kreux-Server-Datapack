execute as @s[tag=authorize, tag=DENY] run tellraw @s [{"text":"You have ","color":"red","bold":false},{"text":"DENY","color":"red","bold":true}]

execute as @s[tag=authorize, tag=DENY] run tag @s remove RESET