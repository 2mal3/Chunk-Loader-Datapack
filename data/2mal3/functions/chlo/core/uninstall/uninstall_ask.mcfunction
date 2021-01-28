# Description: Ask the player if he really wants to uninstall the datapack
# Called from tag: 2mal3:chlo/uninstall
# Datapack by 2mal3

tellraw @s [{"text":"Do you really want to deinstall the <name> Datapack by 2mal3?","color":"red"},{"text":"\n"},{"text":"[No]","color":"dark_green","hoverEvent":{"action":"show_text","value":"*click*"}},{"text":"\u0020"},{"text":"[Yes]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:chlo/core/uninstall/uninstall"},"hoverEvent":{"action":"show_text","value":"*click*"}}]
