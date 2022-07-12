#run others tick function
function util:tick
function random:tick
function gamemode:authorize
function gamemode:reset/tick
function gamemode:commands/tick
function gamemode:playernum/tick
execute if data storage gamemode:test {tick:0} run function test:tick
execute if data storage gamemode:config {isPlaying:1b} run function gamemode:timer

#loop task
execute at @e[limit=1,tag=spawn] run spawnpoint @a
execute at @e[limit=1,tag=spawn] run setworldspawn