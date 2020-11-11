say Dzhena datapack loaded!

scoreboard objectives add dzhena.cardinal dummy
execute as @a run scoreboard players enable @s dzhena.cardinal
scoreboard players set @a dzhena.cardinal 1

scoreboard objectives add dzhena.snap_t dummy
execute as @a run scoreboard players enable @s dzhena.snap_t
scoreboard players set @a dzhena.snap_t 20

scoreboard objectives add dzhena.px_last dummy
execute as @a run scoreboard players enable @s dzhena.px_last
scoreboard objectives add dzhena.py_last dummy
execute as @a run scoreboard players enable @s dzhena.py_last
scoreboard objectives add dzhena.pz_last dummy
execute as @a run scoreboard players enable @s dzhena.pz_last
scoreboard objectives add dzhena.ry_last dummy
execute as @s run scoreboard players enable @s dzhena.ry_last
scoreboard objectives add dzhena.rx_last dummy
execute as @s run scoreboard players enable @s dzhena.rx_last

execute as @a at @s store result score @s dzhena.px_last run data get entity @s Pos[0] 1000
execute as @a at @s store result score @s dzhena.py_last run data get entity @s Pos[1] 1000
execute as @a at @s store result score @s dzhena.pz_last run data get entity @s Pos[2] 1000
execute as @a at @s store result score @s dzhena.rx_last run data get entity @s Rotation[0]
execute as @a at @s store result score @s dzhena.ry_last run data get entity @s Rotation[1]

scoreboard objectives add dzhena.pos_x dummy
execute as @a run scoreboard players enable @s dzhena.pos_x
scoreboard objectives add dzhena.pos_y dummy
execute as @a run scoreboard players enable @s dzhena.pos_y
scoreboard objectives add dzhena.pos_z dummy
execute as @a run scoreboard players enable @s dzhena.pos_z
scoreboard objectives add dzhena.rot_x dummy
execute as @a run scoreboard players enable @s dzhena.rot_x
scoreboard objectives add dzhena.rot_y dummy
execute as @a run scoreboard players enable @s dzhena.rot_y

say Initializing cardinal direction tags. Set dzhena.snap_to to enable, dzhena.verbose for ...verbose
schedule function dzhena:init/cardinal_direction_tags 10t