# going Down
attribute @s minecraft:gravity modifier remove minecraft:hoverboard
execute if score #average_height var matches 100.. run return run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/gravity/down100

execute if score #average_height var matches 40..90 run return run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/gravity/down4090

execute if score #average_height var matches 20..30 run return run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/gravity/down2030

#those bears' intruder
execute if score #average_height var matches 15..19 run return run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/gravity/goldilocks

# going up
execute if score #average_height var matches ..14 run return run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/gravity/up
