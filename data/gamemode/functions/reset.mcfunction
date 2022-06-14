execute as @s[tag=!authorize] run tell @s Vous n'avez pas la permission de réinitialiser le jeu.

#Verif
tellraw @s[tag=!RESETVERIF,tag=authorize] [{"text":"Are You Sure ?\n","color":"red","bold":true},{"text":"YES","clickEvent":{"action":"run_command","value":"/tag @s add RESET"},"color":"red","bold":true,"underlined":true},{"text":" "},{"text":"NO","clickEvent":{"action":"run_command","value":"/tag @s add NORESET"},"color":"red","bold":false,"underlined":true}]
tag @s[tag=!RESET,tag=!NORESET,tag=authorize] add RESETVERIF

execute as @s[tag=!RESET,tag=!NORESET,tag=authorize] run function gamemode:reset

#Demand (two player require)
execute at @s[tag=RESET,tag=!RESETDEMAND,tag=authorize] run tellraw @a[tag=authorize,tag=!RESET] [{"selector":"@s","color":"gold","bold":true},{"text":" request to reset the game\n","color":"red"},{"text":"ACCEPT","color":"red","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @a[tag=RESET,tag=authorize,tag=!OTHERSNORESET,tag=!OTHERSRESET] add OTHERSRESET"}},{"text":" ","underlined":false},{"text":"DENY","color":"red","bold":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @a[tag=RESET,tag=authorize,tag=!OTHERSNORESET,tag=!OTHERSRESET] add OTHERSNORESET"}}]
execute as @s[tag=RESET,tag=authorize,tag=!OTHERSNORESET,tag=!OTHERSRESET] run tag @s add RESETDEMAND

execute as @s[tag=RESET,tag=authorize,tag=!OTHERSNORESET,tag=!OTHERSRESET] run function gamemode:reset


execute as @s[tag=authorize] run scoreboard players set @s skipline 10

#If deny
tellraw @s[tag=NORESET,tag=authorize] [{"text":"You have ","color":"red","bold":false},{"text":"DENY","color":"red","bold":true}]
execute as @s[tag=NORESET,tag=authorize] run scoreboard players set @s skipline 1

#If others deny
tellraw @s[tag=OTHERSNORESET,tag=authorize] [{"text":"The others have ","color":"red","bold":false},{"text":"DENY","color":"red","bold":true}]
execute as @s[tag=OTHERSNORESET,tag=authorize] run scoreboard players set @s skipline 1

#If accept
tellraw @s[tag=RESET,tag=OTHERSRESET,tag=authorize] [{"text":"The others have ","color":"red","bold":false},{"text":"ACCEPT","color":"dark_green","bold":true}]
execute at @s[tag=RESET,tag=!RESETDEMAND,tag=authorize] run tellraw @a[tag=authorize,tag=!RESET] {"text":" \nThe request has accepted","color":"red"}
execute as @s[tag=RESET,tag=OTHERSRESET,tag=authorize] run scoreboard players set @s skipline 1
tag @s[tag=RESET,tag=OTHERSRESET,tag=authorize] add OKRESET

#Delete Tag if deny
tag @s remove RESET
tag @s remove NORESET
tag @s remove RESETVERIF
tag @s remove OTHERSRESET
tag @s remove OTHERSNORESET
tag @s remove RESETDEMAND


#Reseting
tellraw @a[tag=authorize] {"text":"Reseting...","color":"red"}



tellraw @a[tag=authorize] {"text":"Reset Done","color":"red"}
execute as @s[tag=authorize] run scoreboard players set @s skipline 1
tag @s remove OKRESET