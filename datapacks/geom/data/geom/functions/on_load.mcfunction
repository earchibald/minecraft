say Geometry datapack 'geom' loaded!

scoreboard objectives add geom.snap_on trigger
scoreboard objectives add geom.snap_off trigger
scoreboard players enable @a geom.snap_on
scoreboard players reset @a geom.snap_off
tag @a remove geom.snap_to

scoreboard objectives add geom.verbose trigger
scoreboard objectives add geom.quiet trigger
scoreboard players enable @a geom.verbose
scoreboard players reset @a geom.quiet


scoreboard objectives add geom.cardinal dummy
execute as @a run scoreboard players enable @s geom.cardinal
scoreboard players set @a geom.cardinal 1

scoreboard objectives add geom.snap_t dummy
execute as @a run scoreboard players enable @s geom.snap_t
scoreboard players set @a geom.snap_t 20

scoreboard objectives add geom.px_last dummy
execute as @a run scoreboard players enable @s geom.px_last
scoreboard objectives add geom.py_last dummy
execute as @a run scoreboard players enable @s geom.py_last
scoreboard objectives add geom.pz_last dummy
execute as @a run scoreboard players enable @s geom.pz_last
scoreboard objectives add geom.ry_last dummy
execute as @s run scoreboard players enable @s geom.ry_last
scoreboard objectives add geom.rx_last dummy
execute as @s run scoreboard players enable @s geom.rx_last

execute as @a at @s store result score @s geom.px_last run data get entity @s Pos[0] 1000
execute as @a at @s store result score @s geom.py_last run data get entity @s Pos[1] 1000
execute as @a at @s store result score @s geom.pz_last run data get entity @s Pos[2] 1000
execute as @a at @s store result score @s geom.rx_last run data get entity @s Rotation[0]
execute as @a at @s store result score @s geom.ry_last run data get entity @s Rotation[1]

scoreboard objectives add geom.pos_x dummy
execute as @a run scoreboard players enable @s geom.pos_x
scoreboard objectives add geom.pos_y dummy
execute as @a run scoreboard players enable @s geom.pos_y
scoreboard objectives add geom.pos_z dummy
execute as @a run scoreboard players enable @s geom.pos_z
scoreboard objectives add geom.rot_x dummy
execute as @a run scoreboard players enable @s geom.rot_x
scoreboard objectives add geom.rot_y dummy
execute as @a run scoreboard players enable @s geom.rot_y

say Initializing cardinal direction tags. /trigger geom.snap_on and /trigger geom.snap_off
say use /trigger geom.verbose and geom.quiet to toggle verbose output
schedule function geom:init/cardinal_direction_tags 10t