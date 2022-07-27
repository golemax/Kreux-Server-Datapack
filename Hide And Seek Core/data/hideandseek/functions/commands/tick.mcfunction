#active commands
scoreboard players enable @a config
scoreboard players enable @a empty
scoreboard players enable @a test
scoreboard players enable @a spawn
scoreboard players enable @a reset

#detect commands
execute as @a[scores={config=1..}] run function hideandseek:config/main
execute as @a[scores={empty=1..}] run function hideandseek:warp/empty
execute as @a[scores={test=1..}] run function hideandseek:warp/test
execute as @a[scores={spawn=1..}] run function hideandseek:warp/spawn
execute as @a[scores={reset=1..}] run function hideandseek:reset/playerverif

#reset commands
scoreboard players set @a config 0
scoreboard players set @a empty 0
scoreboard players set @a test 0
scoreboard players set @a spawn 0
scoreboard players set @a reset 0