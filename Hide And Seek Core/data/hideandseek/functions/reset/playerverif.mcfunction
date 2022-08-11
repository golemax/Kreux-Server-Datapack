execute store result score @s tempo run data get storage hideandseek:config playernum

execute if score @s tempo matches ..1 as @s run tellraw @s {"text":"Le nombre de joueurs pouvant vérifier votre requête est insuffisant."}
execute if score @s tempo matches 2.. as @s run tellraw @s [{"text":"Are You Sure ?\n","color":"red","bold":true},{"text":"YES","clickEvent":{"action":"run_command","value":"/tag @s add RESET"},"color":"red","bold":true,"underlined":true},{"text":" "},{"text":"NO","clickEvent":{"action":"run_command","value":"/tag @s add DENY"},"color":"red","bold":false,"underlined":true}]

scoreboard players set @s tempo 0