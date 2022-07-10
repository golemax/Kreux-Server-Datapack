#Delete Tag
tag @s remove RESET
tag @s remove DENY
tag @s remove OTHERSRESET
tag @s remove OTHERSDENY

#Reseting
tellraw @a[tag=authorize] {"text":"Reseting...","color":"red"}



tellraw @a[tag=authorize] {"text":"Reset Done","color":"red"