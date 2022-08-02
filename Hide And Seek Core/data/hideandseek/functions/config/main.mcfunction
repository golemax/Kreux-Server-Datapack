execute as @s[tag=!authorize] run tellraw @s {"text":"Vous n'avez pas la permission de modifier le jeu"}

execute as @s[tag=authorize] run tellraw @s {"text":"Fonction en développement"}

tellraw @s {"text":"----- config -----"}
function hideandseek:addonsonsetting
tellraw @s {"text":"------------------"}