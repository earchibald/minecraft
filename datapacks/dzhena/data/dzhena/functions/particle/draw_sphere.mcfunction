function dzhena:particle/draw_circle
tp @s ~ ~ ~ ~ ~5
execute unless entity @s[x_rotation=90] at @s run function dzhena:particle/draw_sphere
