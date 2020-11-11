tag @a remove geom.south
tag @a remove geom.west
tag @a remove geom.north
tag @a remove geom.east

# positive Z == 0 degrees = geom.south
execute as @a[y_rotation=-46..45] run tag @s add geom.south
# negative X == 90 degrees = geom.west
execute as @a[y_rotation=46..135] run tag @s add geom.west
# negative Z == 180 degrees = geom.north
execute as @a[y_rotation=136..225] run tag @s add geom.north
# positive X == 270 degrees = geom.east
execute as @a[y_rotation=226..-45] run tag @s add geom.east

execute as @a[tag=geom.south] run scoreboard objectives modify geom.cardinal displayname "south"
execute as @a[tag=geom.south] run scoreboard players set @s geom.cardinal 0

execute as @a[tag=geom.west] run scoreboard objectives modify geom.cardinal displayname "west"
execute as @a[tag=geom.west] run scoreboard players set @s geom.cardinal 90

execute as @a[tag=geom.north] run scoreboard objectives modify geom.cardinal displayname "north"
execute as @a[tag=geom.north] run scoreboard players set @s geom.cardinal 180

execute as @a[tag=geom.east] run scoreboard objectives modify geom.cardinal displayname "east"
execute as @a[tag=geom.east] run scoreboard players set @s geom.cardinal 270

schedule function geom:init/cardinal_direction_tags 20t
