setblock ^ ^ ^29 minecraft:sea_lantern
tp @s ~ ~ ~ ~2 ~
execute unless entity @s[y_rotation=0..1] at @s run function dzhena:particle/create_circle_sea_lantern
