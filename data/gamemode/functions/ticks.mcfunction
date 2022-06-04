execute as @a[scores={test=1..}, gamemode=creative] in gamemode:test run tp 0 10 0
execute as @a[scores={spawn=1..}, gamemode=creative] in gamemode:hub run tp 0 10 0

execute as @a[scores={test=1..}, gamemode=creative] in gamemode:test run trigger test set 0
execute as @a[scores={spawn=1..}, gamemode=creative] in gamemode:hub run trigger spawn set 0