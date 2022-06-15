data modify storage random:value seed set value 0
data modify storage random:value lastnumber set value 1
data modify storage random:value demand set value false
data modify storage random:value bound set value 0
data modify storage random:value return set value 0
data modify storage random:value returnDone set value false
data modify storage random:value returnComplete set value false

execute store result storage random:value seed int 1 run data get entity @e[sort=random,limit=1] Pos[0] 1