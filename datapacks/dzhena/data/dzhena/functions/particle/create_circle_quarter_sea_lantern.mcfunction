setblock ^ ^ ^29 minecraft:sea_lantern
tp @s ~ ~ ~ ~1 ~
execute unless entity @s[y_rotation=90] unless entity @s[y_rotation=180] unless entity @s[y_rotation=270] at @s run function dzhena:particle/create_circle_quarter_sea_lantern
