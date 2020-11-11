function dzhena:particle/create_circle_obsidian
tp @s ~ ~ ~ ~ ~-2
execute unless entity @s[x_rotation=0..1] at @s run function dzhena:particle/create_half-sphere-bottom_obsidian