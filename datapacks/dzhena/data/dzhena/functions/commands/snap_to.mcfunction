# depending on what direction (set by cardinal_direction_tags via on_tick) the player is
#   mmmmmostly facing, snap them to that cardinal SWNE direction at 0 deg rotation_x
#   (e.g. straight forward, not up or down)
# (Can we assume  dzhena.snap_t is 0 if we've gotten here from on_tick? one less argument...)
execute as @s[tag=dzhena.south] at @s run tp @s ~ ~ ~ 0 0
execute as @s[tag=dzhena.west] at @s run tp @s ~ ~ ~ 90 0
execute as @s[tag=dzhena.north] at @s run tp @s ~ ~ ~ 180 0
execute as @s[tag=dzhena.east] at @s run tp @s ~ ~ ~ 270 0

# //summon armor_stand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"dzhena.south",Tags:["dzhena.south"]}
execute as @s[tag=dzhena.verbose,tag=dzhena.south] run summon area_effect_cloud ~ ~1 ~2 {Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"South (+Z)\"}",Tags:["dzhena.south"],Duration:20}
execute as @s[tag=dzhena.verbose,tag=dzhena.west] run summon area_effect_cloud ~-2 ~1 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"West (-X)\"}",Tags:["dzhena.west"],Duration:20}
execute as @s[tag=dzhena.verbose,tag=dzhena.north] run summon area_effect_cloud ~ ~1 ~-2 {Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"North (-Z)\"}",Tags:["dzhena.north"],Duration:20}
execute as @s[tag=dzhena.verbose,tag=dzhena.east] run summon area_effect_cloud ~2 ~1 ~ {Invulnerable:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"{\"text\":\"East (+X)\"}",Tags:["dzhena.east"],Duration:20}

execute as @s run tag @s add dzhena.snapped