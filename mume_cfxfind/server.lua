ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('cfxfind')
AddEventHandler('cfxfind', function(param, name)

    ESX.RegisterServerCallback("mume_cfxfinder:ip",function(source,cb)
        local cfxcode = param

        PerformHttpRequest("https://servers-live.fivem.net/api/servers/single/" .. cfxcode, function (errorCode, resultData, resultHeaders)
            local res = json.decode(resultData)
            local ip = tostring(res["Data"]["connectEndPoints"][1])
            cb(ip)            
        end)
        
    end)

end)