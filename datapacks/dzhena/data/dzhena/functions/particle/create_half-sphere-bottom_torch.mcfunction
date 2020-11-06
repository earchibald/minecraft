function dzhena:particle/create_circle_torch
tp @s ~ ~ ~ ~ ~-10
execute unless entity @s[x_rotation=0] at @s run function dzhena:particle/create_half-sphere-bottom_torch
