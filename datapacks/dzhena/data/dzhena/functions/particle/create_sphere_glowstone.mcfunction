function dzhena:particle/create_circle_glowstone
tp @s ~ ~ ~ ~ ~-10
execute unless entity @s[x_rotation=-90] at @s run function dzhena:particle/create_sphere_glowstone
