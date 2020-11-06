fill ^ ^-1 ^3 ^ ^-1 ^29 minecraft:cobblestone
setblock ^ ^ ^3 minecraft:torch
setblock ^ ^ ^8 minecraft:torch
setblock ^ ^ ^14 minecraft:torch
setblock ^ ^ ^20 minecraft:torch
setblock ^ ^ ^25 minecraft:torch

tp @s ~ ~ ~ ~5 ~
execute unless entity @s[y_rotation=0..4] at @s run function dzhena:particle/create_filled_circle_cobblestone
