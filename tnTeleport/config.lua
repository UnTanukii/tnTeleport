tnTeleport = {}

tnTeleport.Positions = {
    {
        ['Job'] = "police", --Only People with police job can use this teleporter
        ['Job2'] = false, 
        ['Enter'] = {
            ['Coords'] = { x = -75.117118835449, y = -824.54711914063, z = 321.29183959961, h = 90},
            ['Notification'] = '~INPUT_CONTEXT~ pour descendre', --https://docs.fivem.net/docs/game-references/controls/
            ['Marker'] = { --https://docs.fivem.net/docs/game-references/markers/
                ['show'] = true, --true = The marker will be displayed/false = The marker will not be displayed
                ['type'] = 22, 
                ['rgb'] = {255,0,0},
            }
        },
        ['Exit'] = {
            ['Coords'] = { x = -83.567115783691, y = -835.42498779297, z = 40.557823181152, h = 90},
            ['Notification'] = '~INPUT_CONTEXT~ pour monter', --https://docs.fivem.net/docs/game-references/controls/
            ['Marker'] = { --https://docs.fivem.net/docs/game-references/markers/
                ['show'] = true, --true = The marker will be displayed/false = The marker will not be displayed
                ['type'] = 22,
                ['rgb'] = {255,0,0},
            }
        },
    },
    {
        ['Job'] = false, 
        ['Job2'] = "vagos", --Only people with vagos job can use this point 
        ['Enter'] = {
            ['Coords'] = { x = 206.33645629883, y = -1851.9584960938, z = 27.479230880737, h = 142.43612670898 },
            ['Notification'] = '~INPUT_CONTEXT~ pour entrer',
            ['Marker'] = {
                ['show'] = true, --true = The marker will be displayed/false = The marker will not be displayed
                ['type'] = 22,
                ['rgb'] = {0,255,0},
            }
        },
        ['Exit'] = {
            ['Coords'] = { x = 1065.8251953125, y = -3183.2780761719, z = -39.16340637207, h = 85.588111877441 },
            ['Notification'] = '~INPUT_CONTEXT~ pour sortir',
            ['Marker'] = {
                ['show'] = false, --true = The marker will be displayed/false = The marker will not be displayed
                ['type'] = 22,
                ['rgb'] = {0,255,0},
            }
        },
    },
}

tnTeleport.Distances = {
    ['Marker'] = 7,
    ['Interaction'] = 2 ,
}
