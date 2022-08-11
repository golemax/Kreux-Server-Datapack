#add values
data modify storage hideandseek:config isPlaying set value 0
data modify storage hideandseek:config playernum set value 0
data modify storage hideandseek:timer ticks set value 0
data modify storage hideandseek:timer secondes set value 0
data modify storage hideandseek:timer minutes set value 0

#add local values
scoreboard objectives add deads deathCount
scoreboard objectives add kills playerKillCount

#startup task
function hideandseek:commands/load
function hideandseek:addons

tag @a remove ingame

function #hideandseek:addonsload