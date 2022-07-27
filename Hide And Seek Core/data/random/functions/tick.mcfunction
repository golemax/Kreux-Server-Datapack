#on return pick
execute if data storage random:value {returnComplete:true} run data modify storage random:value demand set value false
execute if data storage random:value {returnComplete:true} run data modify storage random:value bound set value 0
execute if data storage random:value {returnComplete:true} run data modify storage random:value return set value 0
execute if data storage random:value {returnComplete:true} run data modify storage random:value returnDone set value false
execute if data storage random:value {returnComplete:true} run data modify storage random:value returnComplete set value false

#on demand posted
summon marker ~ ~ ~ {Tags:["Operator"]}
execute if data storage random:value {demand:true, returnDone:false} run scoreboard objectives add number dummy
execute if data storage random:value {demand:true, returnDone:false} run scoreboard objectives add operation dummy
execute if data storage random:value {demand:true, returnDone:false} store result score @e[tag=Operator,limit=1] number run data get storage random:value lastnumber 1
execute if data storage random:value {demand:true, returnDone:false} store result score @e[tag=Operator,limit=1] operation run data get storage random:value seed 1

#generate random number
execute if data storage random:value {demand:true, returnDone:false} run scoreboard players operation @e[tag=Operator,limit=1] number *= @e[tag=Operator,limit=1] operation
execute if data storage random:value {demand:true, returnDone:false} store result storage random:value lastnumber int 1 run scoreboard players get @e[tag=Operator,limit=1] number
execute if data storage random:value {demand:true, returnDone:false} store result score @e[tag=Operator,limit=1] operation run data get storage random:value bound 1
execute if data storage random:value {demand:true, returnDone:false} run scoreboard players operation @e[tag=Operator,limit=1] number %= @e[tag=Operator,limit=1] operation
execute if data storage random:value {demand:true, returnDone:false} store result storage random:value return int 1 run scoreboard players get @e[tag=Operator,limit=1] number

#post number
execute if data storage random:value {demand:true, returnDone:false} run kill @e[tag=Operator]
execute if data storage random:value {demand:true, returnDone:false} run data modify storage random:value returnDone set value true
execute if data storage random:value {demand:true, returnDone:false} run data modify storage random:value demand set value false