tp @s ~ ~ ~ 0 0
setblock ^ ^ ^5 minecraft:chain_command_block[facing=dzhena.south]{auto:1b,Command:"execute as @p[distance=1..10] at @s rotated 0 0 run function dzhena:build/moon_floor"}
setblock ^ ^ ^4 minecraft:chain_command_block[facing=dzhena.south]{auto:1b,Command:"execute as @p[distance=1..10] at @s rotated 0 0 run function dzhena:build/moon_roof"}
setblock ^ ^ ^3 minecraft:chain_command_block[facing=dzhena.south]{auto:1b,Command:"execute as @p[distance=1..10] at @s rotated 0 0 run function dzhena:build/moon_inside"}
setblock ^ ^ ^2 minecraft:chain_command_block[facing=dzhena.south]{auto:1b,Command:"execute as @p[distance=1..10] at @s rotated 0 0 run function dzhena:build/moon_core"}
setblock ^ ^ ^1 minecraft:command_block[facing=dzhena.south]{Command:"execute as @p[distance=1..10] at @s run function dzhena:build/moon_shell",auto:1b}
setblock ^ ^1 ^1 command_block[facing=dzhena.south]{Command:"function dzhena:build/moon_cleanup"}
setblock ^ ^1 ^ acacia_button[face=wall,facing=dzhena.north]