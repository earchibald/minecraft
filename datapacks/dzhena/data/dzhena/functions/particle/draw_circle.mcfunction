particle end_rod ^ ^ ^2 0 0 0 0 1
tp @s ~ ~ ~ ~5 ~
execute unless entity @s[y_rotation=0..4] at @s run function dzhena:particle/draw_circle
