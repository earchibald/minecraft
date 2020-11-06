fill ^ ^ ^10 ^ ^ ^10 minecraft:air
tp @s ~ ~ ~ ~5 ~
execute unless entity @s[y_rotation=0..4] at @s run function dzhena:particle/create_circle_air
