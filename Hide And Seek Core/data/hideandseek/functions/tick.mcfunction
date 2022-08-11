#run others tick function
function hideandseek:authorize
function hideandseek:commands/tick
function hideandseek:playernum
execute as @a run function hideandseek:reset/tickverif
execute if data storage hideandseek:config {isPlaying:1b} run function hideandseek:timer

function #hideandseek:addonstick