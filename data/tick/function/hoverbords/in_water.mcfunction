## On water math

scoreboard players set $strength player_motion.api.launch 600

execute unless entity @s[gamemode=creative] at @s rotated ~ -90 run function player_motion:api/launch_looking

function tick:hoverbords/on_water