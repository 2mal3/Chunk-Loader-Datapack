# Description: Initialises a chunk loader when placed by a player
# Called from advancement: 2mal3:chlo/place_chunk_loader
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={chlo.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"ChunkLoader","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"The player ","color":"green"},{"selector":"@s","color":"green"},{"text":" has placed a chunk loader.","color":"green"}]

# Resets the player the advancement
advancement revoke @s only 2mal3:chlo/place_chunk_loader

# Starts a raycast to find the chunkloader
execute anchored eyes run function 2mal3:chlo/placed/raycast