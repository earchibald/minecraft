# function dzhena:init/cardinal_direction_tags
# execute if entity @p[tag=snap_to,nbt={PortalCooldown:0}] as @p[tag=snap_to,nbt={PortalCooldown:0}] at @s run function dzhena:commands/snap_to
# execute if entity @p[tag=snap_to,nbt={PortalCooldown:0}] as @s run data modify entity @s PortalCooldown set value {PortalCooldown:300}
