fx_version 'cerulean'
game 'gta5'

description 'Paanwala Script'
version '1.0.0'

shared_script {
	'config.lua',
}

client_scripts {
	"@PolyZone/client.lua", 
	"@PolyZone/BoxZone.lua", 
	"@PolyZone/CircleZone.lua", 
	"client/*.lua",
}

server_script {
	'server/*.lua',
}

escrow_ignore {
	'client/*.lua',
	'server/*.lua',
	'config.lua',
}

lua54 'yes'