say "Dzhena datapack loaded!"

scoreboard objectives add card_direction dummy
execute as @a run scoreboard players enable @s card_direction
scoreboard players set @a card_direction 1
# scoreboard objectives add west dummy
# execute as @a run scoreboard players enable @s west
# scoreboard objectives add north dummy
# execute as @a run scoreboard players enable @s north
# scoreboard objectives add east dummy
# execute as @a run scoreboard players enable @s east

schedule function dzhena:init/cardinal_direction_tags 10t