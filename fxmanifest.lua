fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'
this_is_a_map 'yes'

name 'scully_cayoperico'
author 'https://discord.gg/scully'
version '1.0.1'
license 'LGPL-3.0-or-later'
repository 'https://github.com/Scullyy/scully_cayoperico'
description 'Introducing a seamless travel solution for all adventurers: embark on exhilarating journeys to and from the captivating shores of Cayo Perico with ease!'

dependencies {
    '/server:7290',
    'ox_lib'
}

shared_script '@ox_lib/init.lua'

client_script 'client/main.lua'

server_script 'server/main.lua'

files {
    'locales/*.json',
    'config.lua',
    'data/*.lua'
}

ox_libs {
    'locale'
}