#run others tick function
function util:tick
function hideandseek:authorize
function hideandseek:commands/tick
function hideandseek:playernum/tick
execute as @a run function hideandseek:reset/tick
execute if data storage hideandseek:test {tick:0} run function test:tick
execute if data storage hideandseek:config {isPlaying:1b} run function hideandseek:timer

function hideandseek:addonstick