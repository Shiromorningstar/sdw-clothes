Msf = {}

function SDW.PlayAnim(dict, anim, wait)
    SDW.LoadAnimDict(dict)
    TaskPlayAnim(PlayerPedId(), dict, anim, 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
    Citizen.Wait(wait)
    ClearPedSecondaryTask(PlayerPedId()) 
end


AddEventHandler('sdw-progressBar:removingClothes', function(UnWearing)
    if UnWearing == 'sdw_torso' then
        local success = lib.progressBar({
            duration = 3000,
            label = '🧥 | Removing Shirts!',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })   
    elseif UnWearing == 'sdw_pants' then
        local success = lib.progressBar({
            duration = 3000,
            label = '👖 | Removing Pants!',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_shoes' then
        local success = lib.progressBar({
            duration = 3000,
            label = '👟 | Removing Shoes!',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_mask' then
        local success = lib.progressBar({
            duration = 3000,
            label = '😷 | Removing Mask!',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_hat' then
        local success = lib.progressBar({
            duration = 3000,
            label = '🎩 | Removing Hat!',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_bag' then
        local success = lib.progressBar({
            duration = 3000,
            label = '🎒 | Removing Bag!',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_glasses' then
        local success = lib.progressBar({
            duration = 3000,
            label = '👓 | Removing Glasses!',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_vest' then
        local success = lib.progressBar({
            duration = 3000,
            label = '🦺 | Removing Vest!',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_ears' then
        local success = lib.progressBar({
            duration = 3000,
            label = '🎧 | Removing Ears Accessories!',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    elseif UnWearing == 'sdw_chain' then
        local success = lib.progressBar({
            duration = 3000,
            label = '🧣 | Removing Chain!',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
        })  
    end
end)



function SDW.LoadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end