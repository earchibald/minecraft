function dzhena:particle/create_circle_cobblestone
tp @s ~ ~ ~ ~ ~3
execute unless entity @s[x_rotation=90] at @s run function dzhena:particle/create_sphere_cobblestone
