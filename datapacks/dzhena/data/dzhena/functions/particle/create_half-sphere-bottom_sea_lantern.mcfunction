function dzhena:particle/create_circle_sea_lantern
tp @s ~ ~ ~ ~ ~-2
execute unless entity @s[x_rotation=0] at @s run function dzhena:particle/create_half-sphere-bottom_sea_lantern