setblock ^ ^ ^20 minecraft:cobblestone
tp @s ~ ~ ~ ~3 ~
execute unless entity @s[y_rotation=0..2] at @s run function dzhena:particle/create_circle_cobblestone
