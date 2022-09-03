ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Wait(10)
    end
    while ESX.GetPlayerData() == nil do
        Citizen.Wait(10)
    end
    ESX.PlayerData = ESX.GetPlayerData()
    print('^3Script by ^5Tanukii#7115 ^3- ^5dsc.gg/rfsstore')
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

Citizen.CreateThread(function()
    while true do
    local wait = 1000
  
        local plyCoords = GetEntityCoords(PlayerPedId(), false)  

        for k,v in pairs(tnTeleport.Positions) do
            local Job = v['Job']

            local Enter = v["Enter"]
            local EnterCoords = v['Enter']['Coords']

            local Exit = v["Exit"]
            local ExitCoords = v['Exit']['Coords']
            --ENTER--
            local distanceEnter = #(plyCoords-vector3(EnterCoords.x, EnterCoords.y, EnterCoords.z))
    
            if distanceEnter <= tnTeleport.Distances['Interaction'] then
            wait = 0
                if Job then
                    if ESX.PlayerData.job.name == Job then
                        if Enter.Marker.show then
                            ShowMarker(Enter.Marker.type, EnterCoords.x, EnterCoords.y, EnterCoords.z, Enter.Marker.rgb)
                        end
                
                        if distanceEnter <= tnTeleport.Distances['Interaction'] then
                            wait = 0
                            ESX.ShowHelpNotification(Enter.Notification, false, false, 1)

                            if IsControlJustPressed(1,51) then
                                TeleportPlayer(ExitCoords)
                            end
                        end
                    end
                else
                    if Enter.Marker.show then
                        ShowMarker(Enter.Marker.type, EnterCoords.x, EnterCoords.y, EnterCoords.z, Enter.Marker.rgb)
                    end
            
                    if distanceEnter <= tnTeleport.Distances['Interaction'] then
                        wait = 0
                        ESX.ShowHelpNotification(Enter.Notification, false, false, 1)

                        if IsControlJustPressed(1,51) then
                            TeleportPlayer(ExitCoords)
                        end
                    end
                end
            end

            --Exit--
            local distanceExit = #(plyCoords-vector3(ExitCoords.x, ExitCoords.y, ExitCoords.z))
    
            if distanceExit <= tnTeleport.Distances['Interaction'] then
            wait = 0
                if Job then
                    if ESX.PlayerData.job.name == Job then
                        if Exit.Marker.show then
                            ShowMarker(Exit.Marker.type, ExitCoords.x, ExitCoords.y, ExitCoords.z, Exit.Marker.rgb)
                        end
                
                        if distanceExit <= tnTeleport.Distances['Interaction'] then
                            wait = 0
                            ESX.ShowHelpNotification(Exit.Notification, false, false, 1)

                            if IsControlJustPressed(1,51) then
                                TeleportPlayer(EnterCoords)
                            end
                        end
                    end
                else
                    if Exit.Marker.show then
                        ShowMarker(Exit.Marker.type, ExitCoords.x, ExitCoords.y, ExitCoords.z, Exit.Marker.rgb)
                    end
            
                    if distanceExit <= tnTeleport.Distances['Interaction'] then
                        wait = 0
                        ESX.ShowHelpNotification(Exit.Notification, false, false, 1)

                        if IsControlJustPressed(1,51) then
                            TeleportPlayer(EnterCoords)
                        end
                    end
                end
            end
        end
    Citizen.Wait(wait)
    end
end)

function TeleportPlayer(coords)
    DoScreenFadeOut(100)
    Citizen.Wait(750)
    ESX.Game.Teleport(PlayerPedId(), {x = coords.x, y = coords.y, z = coords.z-1, heading = coords.h})
    DoScreenFadeIn(100)
end


function ShowMarker(type, x, y, z, rgb)
    DrawMarker(type, x, y, z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, rgb[1], rgb[2], rgb[3], 255, 0, 1, 2, 1, nil, nil, 0)
end

--by Tanuki#7115--
