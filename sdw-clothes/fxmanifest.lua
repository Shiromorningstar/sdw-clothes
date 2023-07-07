fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

author 'Shiro Morningstar'
description 'sdw-clothies | OX Clothing Menu As Items Data | https://discord.gg/Cb5Ag3kUXd'

shared_scripts{
	'@ox_lib/init.lua',
	'@es_extended/imports.lua',
	'config.lua',
	'utils/utils.lua'
} 

client_scripts {
	'client/main.lua'
}

server_scripts {
	'server/main.lua'
}

dependency{
	'es_extended',
	'ox_inventory',
	'ox_lib'
}