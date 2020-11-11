# function dzhena:init/cardinal_direction_tags
# execute if entity @p[tag=dzhena.snap_to,nbt={PortalCooldown:0}] as @p[tag=dzhena.snap_to,nbt={PortalCooldown:0}] at @s run function dzhena:commands/dzhena.snap_to
# execute if entity @p[tag=dzhena.snap_to,nbt={PortalCooldown:0}] as @s run data modify entity @s PortalCooldown set value {PortalCooldown:300}
execute as @a at @s store result score @s dzhena.pos_x run data get entity @s Pos[0] 1000
execute as @a at @s store result score @s dzhena.pos_y run data get entity @s Pos[1] 1000
execute as @a at @s store result score @s dzhena.pos_z run data get entity @s Pos[2] 1000
execute as @a at @s store result score @s dzhena.rot_x run data get entity @s Rotation[0]
execute as @a at @s store result score @s dzhena.rot_y run data get entity @s Rotation[1]

# Remove 'moved' tag from everyone. First the individual vectors...
execute as @a[tag=dzhena.moved,tag=!dzhena.snapped] run tag @s remove dzhena.moved_pos_x
execute as @a[tag=dzhena.moved,tag=!dzhena.snapped] run tag @s remove dzhena.moved_pos_y
execute as @a[tag=dzhena.moved,tag=!dzhena.snapped] run tag @s remove dzhena.moved_pos_z
execute as @a[tag=dzhena.moved,tag=!dzhena.snapped] run tag @s remove dzhena.moved_rot_x
execute as @a[tag=dzhena.moved,tag=!dzhena.snapped] run tag @s remove dzhena.moved_rot_y

# Then the overall plain 'moved'
execute as @a[tag=dzhena.moved,tag=!dzhena.snapped] run tag @s remove dzhena.moved

# Set the 'moved' tag if anything has changed in player position or rotation
execute as @a[tag=dzhena.snap_to] at @s unless score @s dzhena.px_last = @s dzhena.pos_x run tag @s add dzhena.moved
execute as @a[tag=dzhena.snap_to] at @s unless score @s dzhena.px_last = @s dzhena.pos_x run tag @s add dzhena.moved_pos_x
execute as @a[tag=dzhena.snap_to] at @s unless score @s dzhena.py_last = @s dzhena.pos_y run tag @s add dzhena.moved
execute as @a[tag=dzhena.snap_to] at @s unless score @s dzhena.py_last = @s dzhena.pos_y run tag @s add dzhena.moved_pos_y
execute as @a[tag=dzhena.snap_to] at @s unless score @s dzhena.pz_last = @s dzhena.pos_z run tag @s add dzhena.moved
execute as @a[tag=dzhena.snap_to] at @s unless score @s dzhena.pz_last = @s dzhena.pos_z run tag @s add dzhena.moved_pos_z
execute as @a[tag=dzhena.snap_to] at @s unless score @s dzhena.rx_last = @s dzhena.rot_x run tag @s add dzhena.moved
execute as @a[tag=dzhena.snap_to] at @s unless score @s dzhena.rx_last = @s dzhena.rot_x run tag @s add dzhena.moved_rot_x
execute as @a[tag=dzhena.snap_to] at @s unless score @s dzhena.ry_last = @s dzhena.rot_y run tag @s add dzhena.moved
execute as @a[tag=dzhena.snap_to] at @s unless score @s dzhena.ry_last = @s dzhena.rot_y run tag @s add dzhena.moved_rot_y

# Remove one from  dzhena.snap_t if nothing has changed in position or rotation
execute as @a[scores={ dzhena.snap_t=1..1000},tag=!dzhena.moved] at @s run scoreboard players remove @s dzhena.snap_t 1

# Also clear the 'dzhena.snapped' tag if anything has changed in position or rotation
execute as @a[tag=dzhena.moved] run tag @s remove dzhena.snapped

# Reset the timer if anything has changed in position or rotation
execute as @a[tag=dzhena.moved] at @s run scoreboard players set @s dzhena.snap_t 20

# If  dzhena.snap_t has emptied, run the dzhena.snap_to function. If player has dzhena.moved, this will not match
#   because  dzhena.snap_t will be reset to 20.
execute as @a[tag=dzhena.snap_to,tag=!dzhena.snapped,scores={ dzhena.snap_t=0}] at @s run function dzhena:commands/snap_to

# Set up pos_*_last and rot_*_last for next run
execute as @a at @s store result score @s dzhena.px_last run data get entity @s Pos[0] 1000
execute as @a at @s store result score @s dzhena.py_last run data get entity @s Pos[1] 1000
execute as @a at @s store result score @s dzhena.pz_last run data get entity @s Pos[2] 1000
execute as @a at @s store result score @s dzhena.rx_last run data get entity @s Rotation[0]
execute as @a at @s store result score @s dzhena.ry_last run data get entity @s Rotation[1]
