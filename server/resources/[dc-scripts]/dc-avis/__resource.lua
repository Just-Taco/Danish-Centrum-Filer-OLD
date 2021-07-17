client_scripts {
    "lib/Tunnel.lua",
    "lib/Proxy.lua",
    "client.lua",
    "config.lua"
}

server_scripts{
    "lib/Tunnel.lua",
    "lib/Proxy.lua",
    "@vrp/lib/utils.lua",
    "server.lua",
    "config.lua"
}

ui_page 'ui/index.html'

files {
	'ui/index.html',
	'ui/script.js',
	'ui/css/style.css',
    'ui/images/background.png',
    'ui/images/avis.png',
	'ui/libraries/axios.min.js',
	'ui/libraries/vue.min.js',
	'ui/libraries/vuetify.css',
	'ui/libraries/vuetify.js',
}