#active commands
scoreboard players enable @a mode
scoreboard players enable @a test
scoreboard players enable @a spawn

#detect commands
execute as @a[scores={mode=1..}, gamemode=creative] run function gamemode:mode
execute as @a[scores={test=1..}, gamemode=creative] in gamemode:test run tp 0 10 0
execute as @a[scores={spawn=1..}, gamemode=creative] in gamemode:hub run tp 0 10 0

#reset commands
execute as @a[scores={test=1..}, gamemode=creative] in gamemode:test run trigger test set 0
execute as @a[scores={spawn=1..}, gamemode=creative] in gamemode:hub run trigger spawn set 0

#loop task
execute store result storage gamemode:config playernum int 1 run list
function gamemode:authorize
execute as @a[tag=!ingame] run effect give @s regeneration 60 255 true
execute as @a run effect give @s saturation 60 255 true