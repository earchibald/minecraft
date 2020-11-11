setblock ^ ^ ^25 minecraft:torch
tp @s ~ ~ ~ ~10 ~
execute unless entity @s[y_rotation=0..9] at @s run function dzhena:particle/create_circle_glowstone
