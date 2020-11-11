execute as @a[scores={geom.snap_on=1}] run tag @s add geom.snap_to
execute as @a[scores={geom.snap_on=1}] run scoreboard players enable @s geom.snap_off
execute as @a[scores={geom.snap_on=1}] run scoreboard players reset @s geom.snap_on
execute as @a[scores={geom.snap_off=1}] run tag @s remove geom.snap_to
execute as @a[scores={geom.snap_off=1}] run scoreboard players enable @s geom.snap_on
execute as @a[scores={geom.snap_off=1}] run scoreboard players reset @s geom.snap_off

execute as @a[scores={geom.verbose=1}] run tag @s add geom.verbose
execute as @a[scores={geom.verbose=1}] run scoreboard players enable @s geom.quiet
execute as @a[scores={geom.verbose=1}] run scoreboard players reset @s geom.verbose
execute as @a[scores={geom.quiet=1}] run tag @s remove geom.verbose
execute as @a[scores={geom.quiet=1}] run scoreboard players enable @s geom.verbose
execute as @a[scores={geom.quiet=1}] run scoreboard players reset @s geom.quiet


# function geom:init/cardinal_direction_tags
# execute if entity @p[tag=geom.snap_to,nbt={PortalCooldown:0}] as @p[tag=geom.snap_to,nbt={PortalCooldown:0}] at @s run function geom:commands/geom.snap_to
# execute if entity @p[tag=geom.snap_to,nbt={PortalCooldown:0}] as @s run data modify entity @s PortalCooldown set value {PortalCooldown:300}
execute as @a at @s store result score @s geom.pos_x run data get entity @s Pos[0] 1000
execute as @a at @s store result score @s geom.pos_y run data get entity @s Pos[1] 1000
execute as @a at @s store result score @s geom.pos_z run data get entity @s Pos[2] 1000
execute as @a at @s store result score @s geom.rot_x run data get entity @s Rotation[0]
execute as @a at @s store result score @s geom.rot_y run data get entity @s Rotation[1]

# Remove 'moved' tag from everyone. First the individual vectors...
execute as @a[tag=geom.moved,tag=!geom.snapped] run tag @s remove geom.moved_pos_x
execute as @a[tag=geom.moved,tag=!geom.snapped] run tag @s remove geom.moved_pos_y
execute as @a[tag=geom.moved,tag=!geom.snapped] run tag @s remove geom.moved_pos_z
execute as @a[tag=geom.moved,tag=!geom.snapped] run tag @s remove geom.moved_rot_x
execute as @a[tag=geom.moved,tag=!geom.snapped] run tag @s remove geom.moved_rot_y

# Then the overall plain 'moved'
execute as @a[tag=geom.moved,tag=!geom.snapped] run tag @s remove geom.moved

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
