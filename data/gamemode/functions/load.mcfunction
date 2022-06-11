#add variables
data modify storage gamemode:config isPlaying set value 0d
data modify storage gamemode:config playernum set value 0d

#add commands
scoreboard objectives add mode trigger
scoreboard objectives add test trigger
scoreboard objectives add spawn trigger

#startup task
worldborder damage buffer 0
worldborder damage amount 1.5
worldborder center 1502 -879
worldborder set 284
gamemode adventure @a
tag @a remove ingame
tp @a @e[limit=1,tag=spawn]
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule doDaylightCycle true
gamerule doImmediateRespawn true
gamerule doEntityDrops false
gamerule doInsomnia true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule disableRaids true
gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage false
gamerule forgiveDeadPlayers true
gamerule freezeDamage false
gamerule keepInventory false
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule showDeathMessages false
gamerule spectatorsGenerateChunks false
gamerule universalAnger false

#end of datapack's loading
say Le datapack est chargé