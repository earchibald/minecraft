execute as @a[tag=autotorch,tag=geom.south] at @s rotated 0 0 if predicate geom:place_torch if block ^-1 ^1 ^ #minecraft:torch_placeable run setblock ^ ^1 ^ minecraft:wall_torch[facing=east]
execute as @a[tag=autotorch,tag=geom.south] at @s rotated 0 0 if predicate geom:place_torch if block ^-1 ^1 ^ #minecraft:torch_placeable run tag @s add torch_placed
execute as @a[tag=autotorch,tag=geom.south] at @s rotated 0 0 if predicate geom:place_torch if block ^1 ^1 ^ #minecraft:torch_placeable run setblock ^ ^1 ^ minecraft:wall_torch[facing=west] keep
execute as @a[tag=autotorch,tag=geom.south] at @s rotated 0 0 if predicate geom:place_torch if block ^1 ^1 ^ #minecraft:torch_placeable run tag @s add torch_placed

execute as @a[tag=autotorch,tag=geom.west] at @s rotated 90 0 if predicate geom:place_torch if block ^-1 ^1 ^ #minecraft:torch_placeable run setblock ^ ^1 ^ minecraft:wall_torch[facing=south]
execute as @a[tag=autotorch,tag=geom.west] at @s rotated 90 0 if predicate geom:place_torch if block ^-1 ^1 ^ #minecraft:torch_placeable run tag @s add torch_placed
execute as @a[tag=autotorch,tag=geom.west] at @s rotated 90 0 if predicate geom:place_torch if block ^1 ^1 ^ #minecraft:torch_placeable run setblock ^ ^1 ^ minecraft:wall_torch[facing=north] keep
execute as @a[tag=autotorch,tag=geom.west] at @s rotated 90 0 if predicate geom:place_torch if block ^1 ^1 ^ #minecraft:torch_placeable run tag @s add torch_placed

execute as @a[tag=autotorch,tag=geom.north] at @s rotated 180 0 if predicate geom:place_torch if block ^-1 ^1 ^ #minecraft:torch_placeable run setblock ^ ^1 ^ minecraft:wall_torch[facing=west]
execute as @a[tag=autotorch,tag=geom.north] at @s rotated 180 0 if predicate geom:place_torch if block ^-1 ^1 ^ #minecraft:torch_placeable run tag @s add torch_placed
execute as @a[tag=autotorch,tag=geom.north] at @s rotated 180 0 if predicate geom:place_torch if block ^1 ^1 ^ #minecraft:torch_placeable run setblock ^ ^1 ^ minecraft:wall_torch[facing=east] keep
execute as @a[tag=autotorch,tag=geom.north] at @s rotated 180 0 if predicate geom:place_torch if block ^1 ^1 ^ #minecraft:torch_placeable run tag @s add torch_placed

execute as @a[tag=autotorch,tag=geom.east] at @s rotated 270 0 if predicate geom:place_torch if block ^-1 ^1 ^ #minecraft:torch_placeable run setblock ^ ^1 ^ minecraft:wall_torch[facing=north]
execute as @a[tag=autotorch,tag=geom.east] at @s rotated 270 0 if predicate geom:place_torch if block ^-1 ^1 ^ #minecraft:torch_placeable run tag @s add torch_placed
execute as @a[tag=autotorch,tag=geom.east] at @s rotated 270 0 if predicate geom:place_torch if block ^1 ^1 ^ #minecraft:torch_placeable run setblock ^ ^1 ^ minecraft:wall_torch[facing=south] keep
execute as @a[tag=autotorch,tag=geom.east] at @s rotated 270 0 if predicate geom:place_torch if block ^1 ^1 ^ #minecraft:torch_placeable run tag @s add torch_placed

execute as @a[tag=autotorch] at @s if predicate geom:place_torch unless entity @s[tag=torch_placed] if block ^ ^-1 ^ #minecraft:torch_placeable run setblock ^ ^ ^ minecraft:torch
execute as @a[tag=autotorch] at @s if predicate geom:place_torch unless entity @s[tag=torch_placed] if block ^ ^-1 ^ #minecraft:torch_placeable run tag @s add torch_placed

execute as @a[tag=torch_placed] run clear @s minecraft:torch 1
execute as @a[tag=torch_placed] run tag @s remove torch_placed

# run every second (20ticks/sec)
schedule function geom:commands/set_torch_predicate 10t