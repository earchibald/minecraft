tag @a remove dzhena.south
tag @a remove dzhena.west
tag @a remove dzhena.north
tag @a remove dzhena.east

# positive Z == 0 degrees = dzhena.south
execute as @a[y_rotation=-46..45] run tag @s add dzhena.south
# negative X == 90 degrees = dzhena.west
execute as @a[y_rotation=46..135] run tag @s add dzhena.west
# negative Z == 180 degrees = dzhena.north
execute as @a[y_rotation=136..225] run tag @s add dzhena.north
# positive X == 270 degrees = dzhena.east
execute as @a[y_rotation=226..-45] run tag @s add dzhena.east

execute as @a[tag=dzhena.south] run scoreboard objectives modify dzhena.cardinal displayname "south"
execute as @a[tag=dzhena.south] run scoreboard players set @s dzhena.cardinal 0

execute as @a[tag=dzhena.west] run scoreboard objectives modify dzhena.cardinal displayname "west"
execute as @a[tag=dzhena.west] run scoreboard players set @s dzhena.cardinal 90

execute as @a[tag=dzhena.north] run scoreboard objectives modify dzhena.cardinal displayname "north"
execute as @a[tag=dzhena.north] run scoreboard players set @s dzhena.cardinal 180

execute as @a[tag=dzhena.east] run scoreboard objectives modify dzhena.cardinal displayname "east"
execute as @a[tag=dzhena.east] run scoreboard players set @s dzhena.cardinal 270

schedule function dzhena:init/cardinal_direction_tags 20t
