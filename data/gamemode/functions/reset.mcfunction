execute as @s[tag=!authorize] run tell @s Vous n'avez pas la permission de réinitialiser le jeu.

#Demand (two player require)
execute at @s[tag=!RESETDEMAND,tag=authorize] run tellraw @a[tag=authorize] [{"selector":"@s","color":"gold","bold":true},{"text":" request to reset the game\n","color":"red"},{"text":"ACCEPT","color":"red","underlined":true},{"text":" ","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","underlined":true}]}},{"text":"DENY","color":"red","bold":false,"underlined":true}]
execute as @s[tag=authorize,tag=!RESERDEMANDED] run tag @s add RESETDEMAND

execute as @s[tag=!RESETDEMANDED,tag=authorize] run function gamemode:reset

#Verif
tellraw @s[tag=!RESETVERIF,tag=authorize] [{"text":"Are You Sure ?\n"},{"text":"YES","clickEvent":{"action":"run_command","value":"tag @s add RESET"}},{"text":" "},{"text":"NO","clickEvent":{"action":"run_command","value":"tag @s add NORESET"}}]
tag @s[tag=!RESETVERIFIED,tag=authorize] add RESETVERIF

#If accept
execute as @s[tag=RESET] run scoreboard players set @s skipline 10


execute as @s[tag=RESETVERIF,tag=authorize] run function gamemode:reset