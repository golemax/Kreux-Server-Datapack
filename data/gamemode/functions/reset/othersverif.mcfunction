tellraw @a[tag=authorize,tag=!RESET] [{"selector":"@s","color":"gold","bold":true},{"text":" request to reset the game\n","color":"red"},{"text":"ACCEPT","color":"red","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @a[tag=RESET,tag=authorize,tag=!OTHERSDENY,tag=!OTHERSRESET] add OTHERSRESET"}},{"text":" ","underlined":false},{"text":"DENY","color":"red","bold":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @a[tag=RESET,tag=authorize,tag=!OTHERSRESET] add OTHERSDENY"}}]
tellraw @s {"text":"[CANCEL]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add DENY"}}