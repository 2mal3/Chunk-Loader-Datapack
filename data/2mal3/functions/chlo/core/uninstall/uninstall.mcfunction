# Description: Uninstalls the Datapack
# Called from function: core/uninstall/uninstall_ask
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={chlo.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"ChunkLoader","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack uninstalled!","color":"green"}]


# Stops the loops
schedule clear 2mal3:chlo/core/tick/second

# Deletes the scoreboards
scoreboard objectives remove chlo.data
scoreboard objectives remove chlo.debug_mode

# Sends an uninstallation message to all players
tellraw @a [{"text":"Chunk Loader Datapack v2.0.0 by 2mal3 was successfully uninstalled."}]

# Disables the datapack
datapack disable "file/Chunk-Loader-Datapack-v2.0.0"
datapack disable "file/Chunk-Loader-Datapack-v2.0.0.zip"
