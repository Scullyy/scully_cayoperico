return {
    islandCoords = vec3(4840.571, -5174.425, 2.0),
    enableMap = true, -- You can set this to false if you are using some other map such as the ones from TheFlyBandit.
    entitySets = {
        {
            enable = false,
            name = 'pearl_necklace_set',
            color = 1
        },
        {
            enable = true,
            name = 'panther_set',
            color = 1
        },
        {
            enable = false,
            name = 'pink_diamond_set',
            color = 1
        }
    },
    radioStations = {
        disable = true, -- Set to false if you wish to use radio stations on the island unaltered.
        showNoSignal = true, -- Set to false if you wish to just disable the radio entirely.
        stations = { -- If you want to keep certain radio stations you can set their bool to false below. (Doing this will ignore the showNoSignal option)
            ['RADIO_01_CLASS_ROCK'] = true, -- Los Santos Rock Radio
            ['RADIO_02_POP'] = true, -- Non-Stop-Pop FM
            ['RADIO_03_HIPHOP_NEW'] = true, -- Radio Los Santos
            ['RADIO_04_PUNK'] = true,-- Channel X
            ['RADIO_05_TALK_01'] = true, -- West Coast Talk Radio
            ['RADIO_06_COUNTRY'] = true, -- Rebel Radio
            ['RADIO_07_DANCE_01'] = true, -- Soulwax FM
            ['RADIO_08_MEXICAN'] = true, -- East Los FM
            ['RADIO_09_HIPHOP_OLD'] = true, -- West Coast Classics
            ['RADIO_11_TALK_02'] = true, -- Blaine County Radio
            ['RADIO_12_REGGAE'] = true, -- Blue Ark
            ['RADIO_13_JAZZ'] = true, -- Worldwide FM
            ['RADIO_14_DANCE_02'] = true,-- FlyLo FM
            ['RADIO_15_MOTOWN'] = true, -- The Lowdown 91.1
            ['RADIO_16_SILVERLAKE'] = true, -- Radio Mirror Park
            ['RADIO_17_FUNK'] = true, -- Space 103.2
            ['RADIO_18_90S_ROCK'] = true, -- Vinewood Boulevard Radio
            ['RADIO_19_USER'] = true, -- Self Radio
            ['RADIO_20_THELAB'] = true, -- The Lab
            ['RADIO_21_DLC_XM17'] = true,-- Blonded Los Santos 97.8 FM
            ['RADIO_22_DLC_BATTLE_MIX1_RADIO'] = true, -- Los Santos Underground Radio
            ['RADIO_23_DLC_XM19_RADIO'] = true, -- iFruit Radio
            ['RADIO_27_DLC_PRHEI4'] = true, -- Still Slipping Los Santos
            ['RADIO_34_DLC_HEI4_KULT'] = true,-- Kult FM
            ['RADIO_35_DLC_HEI4_MLR'] = true, -- The Music Locker
            ['RADIO_36_AUDIOPLAYER'] = true,-- Media Player
            ['RADIO_37_MOTOMAMI'] = true -- MOTOMAMI Los Santos
        }
    }
}