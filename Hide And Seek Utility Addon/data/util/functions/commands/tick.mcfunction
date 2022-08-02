#active commands
scoreboard players enable @a empty
scoreboard players enable @a test
scoreboard players enable @a spawn

#detect commands
execute as @a[scores={empty=1..}] run function util:warp/empty
execute as @a[scores={test=1..}] run function util:warp/test
execute as @a[scores={spawn=1..}] run function util:warp/spawn

#reset commands
scoreboard players set @a empty 0
scoreboard players set @a test 0
scoreboard players set @a spawn 0