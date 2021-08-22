resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Receives Discord messages and prints them out in-game'			-- Resource Description

client_script {
	'Client/main.lua'
}
server_scripts {																-- Server Scripts
	'Server/Server.lua',
	'Server/ann.lua',
	'bot.js'
}

