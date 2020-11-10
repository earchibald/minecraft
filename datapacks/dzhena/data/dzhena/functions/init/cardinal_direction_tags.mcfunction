tag @a remove south
tag @a remove west
tag @a remove north
tag @a remove east

# positive Z == 0 degrees = south
execute as @a[y_rotation=-46..45] run tag @s add south
# negative X == 90 degrees = west
execute as @a[y_rotation=46..135] run tag @s add west
# negative Z == 180 degrees = north
execute as @a[y_rotation=136..225] run tag @s add north
# positive X == 270 degrees = east
execute as @a[y_rotation=226..-45] run tag @s add east

execute as @a[tag=south] run scoreboard players set @s south 1
execute as @a[tag=south] run scoreboard objectives setdisplay sidebar south
execute as @a[tag=west] run scoreboard players set @s west 1
execute as @a[tag=west] run scoreboard objectives setdisplay sidebar west
execute as @a[tag=north] run scoreboard players set @s north 1
execute as @a[tag=north] run scoreboard objectives setdisplay sidebar north
execute as @a[tag=east] run scoreboard players set @s east 1
execute as @a[tag=east] run scoreboard objectives setdisplay sidebar east

# schedule function dzhena:init/cardinal_direction_tags 10t append
