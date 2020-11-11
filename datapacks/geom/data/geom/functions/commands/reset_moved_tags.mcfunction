# Remove 'moved' tag from everyone. First the individual vectors...
execute as @s run tag @s remove geom.moved_pos_x
execute as @s run tag @s remove geom.moved_pos_y
execute as @s run tag @s remove geom.moved_pos_z
execute as @s run tag @s remove geom.moved_rot_x
execute as @s run tag @s remove geom.moved_rot_y

# Then the overall plain 'moved'
execute as @s run tag @s remove geom.moved
