# Description: Commands when reloading the datapack
# Called from tag: minecraft:reaload
# Datapack by 2mal3

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={chlo.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"ChunkLoader","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Datapack reloaded!","color":"green"}]


# Adds scoreboards
scoreboard objectives add chlo.data dummy
scoreboard objectives add chlo.debug_mode dummy

# Set the version in format: xx.xx.xx
scoreboard players set $chlo.version chlo.data 020000

# Executes the installation when the datapack is started for the first time
execute unless score $chlo.first_run chlo.data matches 1 run schedule function 2mal3:chlo/core/first_run 4s

# Starts the loops
function 2mal3:chlo/core/tick/second
