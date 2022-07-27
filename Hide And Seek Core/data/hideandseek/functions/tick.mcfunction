#run others tick function
function util:tick
function random:tick
function hideandseek:authorize
function hideandseek:commands/tick
function hideandseek:playernum/tick
execute as @a run function hideandseek:reset/tick
execute if data storage hideandseek:test {tick:0} run function test:tick
execute if data storage hideandseek:config {isPlaying:1b} run function hideandseek:timer

#loop task
execute at @e[limit=1,tag=spawn] run spawnpoint @a
execute at @e[limit=1,tag=spawn] run setworldspawn