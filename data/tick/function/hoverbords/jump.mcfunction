scoreboard players set $strength player_motion.api.launch 2000
execute unless entity @s[gamemode=creative] at @s rotated ~ -90 run function player_motion:api/launch_looking
tag @s add hoverbored.jump
attribute @s minecraft:gravity base set 0