#active commands
scoreboard players enable @a test
scoreboard players enable @a config
scoreboard players enable @a spawn
scoreboard players enable @a reset

#detect commands
execute as @a[scores={config=1..}, gamemode=creative] run function gamemode:config/main
execute as @a[scores={test=1..}, gamemode=creative] in gamemode:test run tp 0 25 0
execute as @a[scores={spawn=1..}] in minecraft:overworld run tp @s @e[limit=1,tag=spawn]
execute as @a[scores={reset=1..}] run function gamemode:reset/playerverif

#run others tick function
function util:tick
function random:tick
execute if data storage gamemode:test {tick:0} run function test:tick

#loop task
execute if data storage gamemode:config {isPlaying:1b} run function gamemode:timer
execute at @e[limit=1,tag=spawn] run spawnpoint @a
execute at @e[limit=1,tag=spawn] run setworldspawn
scoreboard objectives add authorizeplayernum dummy
execute as @a[tag=authorize] run scoreboard players add @a authorizeplayernum 1
execute store result storage gamemode:config authorizeplayernum int 1 run scoreboard players get @a[limit=1] authorizeplayernum
scoreboard objectives remove authorizeplayernum
execute store result storage gamemode:config playernum int 1 run list
function gamemode:authorize

#reset commands
execute as @a[scores={config=1..}] run scoreboard players set @s config 0
execute as @a[scores={test=1..}] run scoreboard players set @s test 0
execute as @a[scores={spawn=1..}] run scoreboard players set @s spawn 0
execute as @a[scores={reset=1..}] run scoreboard players set @s reset 0