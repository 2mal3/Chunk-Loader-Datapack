# Description: Raycasting to find the chunk loader
# Called from function: 2mal3:chlo/placed/placed
# Datapack by 2mal3

execute if block ~ ~ ~ minecraft:blackstone run function 2mal3:chlo/placed/find
execute unless block ~ ~ ~ minecraft:blackstone if block ~ ~ ~ #2mal3:chlo/air positioned ^ ^ ^0.1 run function 2mal3:chlo/placed/raycast