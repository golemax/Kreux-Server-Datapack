scoreboard players add $addons HideAndSeek 1
scoreboard players add $utilAddons HideAndSeek 1
scoreboard players add $hubAddons HideAndSeek 1
scoreboard players add $fixAddons HideAndSeek 1

function util:commands/load

tp @a @e[limit=1,tag=spawn]

gamemode adventure @a
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

worldborder damage buffer 0
worldborder damage amount 1.5
worldborder center 1502 -879
worldborder set 284