setblock ^ ^ ^24 minecraft:torch
tp @s ~ ~ ~ ~8 ~
execute unless entity @s[y_rotation=0..7] at @s run function dzhena:particle/create_circle_torch
