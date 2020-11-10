say "Dzhena datapack loaded!"

scoreboard objectives add south dummy
execute as @a run scoreboard players enable @s south
scoreboard objectives add west dummy
execute as @a run scoreboard players enable @s west
scoreboard objectives add north dummy
execute as @a run scoreboard players enable @s north
scoreboard objectives add east dummy
execute as @a run scoreboard players enable @s east

# schedule function dzhena:init/cardinal_direction_tags 10t