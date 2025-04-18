scoreboard players operation $strength player_motion.api.launch = @s hoverboard.jumpheight
execute unless entity @s[gamemode=creative] at @s rotated ~ -90 run function player_motion:api/launch_looking
tag @s add hoverbored.jump
attribute @s minecraft:gravity base set 0