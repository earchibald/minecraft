function dzhena:particle/create_circle_cobblestone
tp @s ~ ~ ~ ~ ~-3
execute unless entity @s[x_rotation=0] at @s run function dzhena:particle/create_half-sphere-bottom_cobblestone
