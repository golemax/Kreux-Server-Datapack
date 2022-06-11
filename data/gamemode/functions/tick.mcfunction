#active commands
scoreboard players enable @a mode
scoreboard players enable @a test
scoreboard players enable @a config
scoreboard players enable @a spawn

#detect commands
execute as @a[scores={mode=1..}] run function gamemode:mode
execute as @a[scores={config=1..}, gamemode=creative] run function gamemode:config
execute as @a[scores={test=1..}, gamemode=creative] in gamemode:test run tp 0 25 0
execute as @a[scores={spawn=1..}] in minecraft:overworld run tp @s @e[limit=1,tag=spawn]

#reset commands
execute as @a[scores={mode=1..}] in gamemode:mode run trigger mode set 0
execute as @a[scores={config=1..}] in gamemode:test run trigger config set 0
execute as @a[scores={test=1..}] in gamemode:mode run trigger test set 0
execute as @a[scores={spawn=1..}] in gamemode:hub run trigger spawn set 0

#loop task
execute at @e[limit=1,tag=spawn] run spawnpoint @a
execute at @e[limit=1,tag=spawn] run setworldspawn
execute store result storage gamemode:config playernum int 1 run list
function gamemode:authorize
execute as @a[tag=!ingame] run effect give @s regeneration 60 255 true
execute as @a run effect give @s saturation 60 255 true