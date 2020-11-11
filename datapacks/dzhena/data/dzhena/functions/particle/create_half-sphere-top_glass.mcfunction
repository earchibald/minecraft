function dzhena:particle/create_circle_glass
tp @s ~ ~ ~ ~ ~2
execute unless entity @s[x_rotation=0] at @s run function dzhena:particle/create_half-sphere-top_glass
# execute if entity @s[x_rotation=0] at @s run kill @e[type=!player,distance=0..50]
