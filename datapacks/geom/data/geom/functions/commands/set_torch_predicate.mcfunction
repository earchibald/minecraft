execute as @a[tag=autotorch,tag=geom.south] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^-1 ^1 ^ minecraft:air run setblock ^ ^2 ^ minecraft:wall_torch[facing=east]
execute as @a[tag=autotorch,tag=geom.south] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^-1 ^1 ^ minecraft:air run tag @s add torch_placed
execute as @a[tag=autotorch,tag=geom.south] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^1 ^1 ^ minecraft:air run setblock ^ ^2 ^ minecraft:wall_torch[facing=west] keep
execute as @a[tag=autotorch,tag=geom.south] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^1 ^1 ^ minecraft:air run tag @s add torch_placed

execute as @a[tag=autotorch,tag=geom.west] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^-1 ^1 ^ minecraft:air run setblock ^ ^2 ^ minecraft:wall_torch[facing=south]
execute as @a[tag=autotorch,tag=geom.west] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^-1 ^1 ^ minecraft:air run tag @s add torch_placed
execute as @a[tag=autotorch,tag=geom.west] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^1 ^1 ^ minecraft:air run setblock ^ ^2 ^ minecraft:wall_torch[facing=north] keep
execute as @a[tag=autotorch,tag=geom.west] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^1 ^1 ^ minecraft:air run tag @s add torch_placed

execute as @a[tag=autotorch,tag=geom.north] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^-1 ^1 ^ minecraft:air run setblock ^ ^2 ^ minecraft:wall_torch[facing=west]
execute as @a[tag=autotorch,tag=geom.north] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^-1 ^1 ^ minecraft:air run tag @s add torch_placed
execute as @a[tag=autotorch,tag=geom.north] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^1 ^1 ^ minecraft:air run setblock ^ ^2 ^ minecraft:wall_torch[facing=east] keep
execute as @a[tag=autotorch,tag=geom.north] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^1 ^1 ^ minecraft:air run tag @s add torch_placed

execute as @a[tag=autotorch,tag=geom.east] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^-1 ^1 ^ minecraft:air run setblock ^ ^2 ^ minecraft:wall_torch[facing=north]
execute as @a[tag=autotorch,tag=geom.east] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^-1 ^1 ^ minecraft:air run tag @s add torch_placed
execute as @a[tag=autotorch,tag=geom.east] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^1 ^1 ^ minecraft:air run setblock ^ ^2 ^ minecraft:wall_torch[facing=south] keep
execute as @a[tag=autotorch,tag=geom.east] at @s if predicate geom:offhand_torch if predicate geom:bad_light unless block ^1 ^1 ^ minecraft:air run tag @s add torch_placed

execute as @a[tag=autotorch] at @s if predicate geom:bad_light if block ^-1 ^1 ^ minecraft:air run setblock ^ ^ ^ minecraft:torch
execute as @a[tag=autotorch] at @s if predicate geom:bad_light if block ^-1 ^1 ^ minecraft:air run tag @s add torch_placed

execute as @a[tag=torch_placed] run clear @s minecraft:torch 1
execute as @a[tag=torch_placed] run tag @s remove torch_placed

# run every second (20ticks/sec)
schedule function geom:commands/set_torch_predicate 10t