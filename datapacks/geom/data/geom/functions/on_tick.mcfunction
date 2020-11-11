# toggle snap_to
execute as @a[scores={geom.snap_to=1},tag=!geom.snap_to] run say @s snap_to is: ON
execute as @a[scores={geom.snap_to=1}] run tag @s add geom.snap_to
execute as @a[scores={geom.snap_to=1}] run scoreboard players enable @s geom.snap_to
execute as @a[scores={geom.snap_to=2},tag=geom.snap_to] run say @s snap_to is: OFF
execute as @a[scores={geom.snap_to=2}] run tag @s remove geom.snap_to
execute as @a[scores={geom.snap_to=2}] run tag @s remove geom.snapped
execute as @a[scores={geom.snap_to=2}] run scoreboard players set @s geom.snap_to 0
execute as @a[scores={geom.snap_to=0}] run scoreboard players enable @s geom.snap_to

# toggle verbose
execute as @a[scores={geom.verbose=1}] run tag @s add geom.verbose
execute as @a[scores={geom.verbose=1}] run scoreboard players enable @s geom.verbose
execute as @a[scores={geom.verbose=2}] run tag @s remove geom.verbose
execute as @a[scores={geom.verbose=2}] run scoreboard players set @s geom.verbose 0
execute as @a[scores={geom.verbose=0},tag=!geom.verbose] run scoreboard players enable @s geom.verbose

# toggle autotorch
execute as @a[scores={autotorch=1}] run tag @s add autotorch
execute as @a[scores={autotorch=1}] run scoreboard players enable @s autotorch
execute as @a[scores={autotorch=2}] run tag @s remove autotorch
execute as @a[scores={autotorch=2}] run scoreboard players set @s autotorch 0
execute as @a[scores={autotorch=0},tag=!autotorch] run scoreboard players enable @s autotorch

# Reset 'moved' and 'moved_pos_*' 'moved_rot_*' tags
execute as @a[tag=geom.moved,tag=!geom.snapped] run function geom:commands/reset_moved_tags

execute as @a at @s store result score @s geom.pos_x run data get entity @s Pos[0] 1000
execute as @a at @s store result score @s geom.pos_y run data get entity @s Pos[1] 1000
execute as @a at @s store result score @s geom.pos_z run data get entity @s Pos[2] 1000
execute as @a at @s store result score @s geom.rot_x run data get entity @s Rotation[0]
execute as @a at @s store result score @s geom.rot_y run data get entity @s Rotation[1]

# Set the 'moved' tag if anything has changed in player position or rotation
execute as @a[tag=geom.snap_to] at @s unless score @s geom.px_last = @s geom.pos_x run tag @s add geom.moved
execute as @a[tag=geom.snap_to] at @s unless score @s geom.px_last = @s geom.pos_x run tag @s add geom.moved_pos_x
execute as @a[tag=geom.snap_to] at @s unless score @s geom.py_last = @s geom.pos_y run tag @s add geom.moved
execute as @a[tag=geom.snap_to] at @s unless score @s geom.py_last = @s geom.pos_y run tag @s add geom.moved_pos_y
execute as @a[tag=geom.snap_to] at @s unless score @s geom.pz_last = @s geom.pos_z run tag @s add geom.moved
execute as @a[tag=geom.snap_to] at @s unless score @s geom.pz_last = @s geom.pos_z run tag @s add geom.moved_pos_z
execute as @a[tag=geom.snap_to] at @s unless score @s geom.rx_last = @s geom.rot_x run tag @s add geom.moved
execute as @a[tag=geom.snap_to] at @s unless score @s geom.rx_last = @s geom.rot_x run tag @s add geom.moved_rot_x
execute as @a[tag=geom.snap_to] at @s unless score @s geom.ry_last = @s geom.rot_y run tag @s add geom.moved
execute as @a[tag=geom.snap_to] at @s unless score @s geom.ry_last = @s geom.rot_y run tag @s add geom.moved_rot_y

# Remove one from  geom.snap_t if nothing has changed in position or rotation
execute as @a[scores={ geom.snap_t=1..1000},tag=!geom.moved] at @s run scoreboard players remove @s geom.snap_t 1

# Also clear the 'geom.snapped' tag if anything has changed in position or rotation
execute as @a[tag=geom.moved] run tag @s remove geom.snapped

# Reset the timer if anything has changed in position or rotation
execute as @a[tag=geom.moved] at @s run scoreboard players set @s geom.snap_t 20

# If  geom.snap_t has emptied, run the geom.snap_to function. If player has geom.moved, this will not match
#   because  geom.snap_t will be reset to 20.
execute as @a[tag=geom.snap_to,tag=!geom.snapped,scores={ geom.snap_t=0}] at @s run function geom:commands/snap_to

# Set up pos_*_last and rot_*_last for next run
execute as @a at @s store result score @s geom.px_last run data get entity @s Pos[0] 1000
execute as @a at @s store result score @s geom.py_last run data get entity @s Pos[1] 1000
execute as @a at @s store result score @s geom.pz_last run data get entity @s Pos[2] 1000
execute as @a at @s store result score @s geom.rx_last run data get entity @s Rotation[0]
execute as @a at @s store result score @s geom.ry_last run data get entity @s Rotation[1]