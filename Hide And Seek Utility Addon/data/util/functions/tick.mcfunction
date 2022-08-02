execute as @a run effect give @s saturation 60 255 true
execute as @a[tag=!ingame] run effect give @s regeneration 60 255 true
execute at @e[limit=1,tag=spawn] run spawnpoint @a
execute at @e[limit=1,tag=spawn] run setworldspawn
function util:commands/tick