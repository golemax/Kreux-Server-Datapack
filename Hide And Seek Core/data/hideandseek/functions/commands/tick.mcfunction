#active commands
scoreboard players enable @a config
scoreboard players enable @a reset

#detect commands
execute as @a[scores={config=1..}] run function hideandseek:config/main
execute as @a[scores={reset=1..}] run function hideandseek:reset/playerverif

#reset commands
scoreboard players set @a config 0
scoreboard players set @a reset 0