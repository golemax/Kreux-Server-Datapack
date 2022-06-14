#active commands
scoreboard players enable @a mode
scoreboard players enable @a test
scoreboard players enable @a config
scoreboard players enable @a spawn
scoreboard players enable @a reset

#detect commands
execute as @a[scores={mode=1..}] run function gamemode:mode
execute as @a[scores={config=1..}, gamemode=creative] run function gamemode:config
execute as @a[scores={test=1..}, gamemode=creative] in gamemode:test run tp 0 25 0
execute as @a[scores={spawn=1..}] in minecraft:overworld run tp @s @e[limit=1,tag=spawn]
execute as @a[scores={reset=1..}] run function gamemode:reset

#reset commands
scoreboard players set @a mode 0
scoreboard players set @a config 0
scoreboard players set @a test 0
scoreboard players set @a spawn 0
scoreboard players set @a reset 0

#loop task
execute if data storage gamemode:config {isPlaying:1b} run function gamemode:timer
execute at @e[limit=1,tag=spawn] run spawnpoint @a
execute at @e[limit=1,tag=spawn] run setworldspawn
execute store result storage gamemode:config playernum int 1 run list
function gamemode:authorize
execute as @a[tag=!ingame] run effect give @s regeneration 60 255 true
execute as @a[scores={skipline=1..}] run tellraw @s  
execute as @a[scores={skipline=1..}] run scoreboard players remove @s skipline 1