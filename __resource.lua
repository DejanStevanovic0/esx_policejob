resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Police Job'

version '1.3.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/pl.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/pl.lua',
	'config.lua',
	'client/main.lua'
}

dependencies {
	'es_extended',
	'esx_billing'
}

ui_page "nui/ui.html"

files {
	"nui/ui.html",
	"nui/ui.js", 
	"nui/ui.css",
	"nui/polcomp.png"
}