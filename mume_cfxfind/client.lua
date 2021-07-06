ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("cfxfind", function(source, args)
    TriggerServerEvent('cfxfind', table.concat(args, " "), GetPlayerName(PlayerId()))
    ESX.TriggerServerCallback('mume_cfxfinder:ip', function(ip)
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0},
            multiline = true,
            args = {"CFX Finder", "Endpoint -> ^2"..ip}
          })
          
          
    end)
end)