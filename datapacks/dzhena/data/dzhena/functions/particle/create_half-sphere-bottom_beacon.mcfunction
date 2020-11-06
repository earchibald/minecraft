function dzhena:particle/create_circle_beacon
tp @s ~ ~ ~ ~ ~-2
execute unless entity @s[x_rotation=0] at @s run function dzhena:particle/create_half-sphere-bottom_beacon
execute if entity @s[x_rotation=0] at @s rotated 0 90 run function dzhena:particle/create_half-sphere-bottom_torch
execute if entity @s[x_rotation=0] at @s rotated 0 0 run function dzhena:particle/create_filled_circle_cobblestone
execute if entity @s[x_rotation=0] at @s run kill @e[type=!player,distance=0..50]
