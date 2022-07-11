#add variables
data modify storage gamemode:config isPlaying set value 0
data modify storage gamemode:config authorizeplayernum set value 0
data modify storage gamemode:config playernum set value 0
data modify storage gamemode:timer ticks set value 0
data modify storage gamemode:timer secondes set value 0
data modify storage gamemode:timer minutes set value 0
data modify storage gamemode:test tick set value 0

#add counter
scoreboard objectives add deads deathCount
scoreboard objectives add kills playerKillCount

#startup task
function gamemode:commands/load
function random:load
worldborder damage buffer 0
worldborder damage amount 1.5
worldborder center 1502 -879
worldborder set 284
gamemode adventure @a
tag @a remove ingame
tp @a @e[limit=1,tag=spawn]
gamerule randomTickSpeed 5
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
gamerule fallDamage true
gamerule fireDamage true
gamerule drowningDamage true
gamerule forgiveDeadPlayers true
gamerule freezeDamage true
gamerule keepInventory true
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule showDeathMessages false
gamerule spectatorsGenerateChunks false
gamerule universalAnger false

#end of datapack's loading
function test:load