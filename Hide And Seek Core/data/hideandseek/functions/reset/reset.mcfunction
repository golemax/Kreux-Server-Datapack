#Delete Tag
tag @s remove RESET
tag @s remove DENY
tag @s remove OTHERSRESET
tag @s remove OTHERSDENY

#Reseting
tellraw @a {"text":"Reseting...","color":"red"}

function #hideandseek:addonsreset

tellraw @a {"text":"Reset Done","color":"red"}