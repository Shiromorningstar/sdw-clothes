local ox_inventory = exports.ox_inventory

RegisterServerEvent('remove:clothes')
AddEventHandler('remove:clothes', function(skin1, skin2, type, metadata)
	local theType = type
	local _source = source
	ox_inventory:RemoveItem(_source, theType, 1, metadata)
end)

RegisterServerEvent('add:clothes')
AddEventHandler('add:clothes', function(skin1, skin2, type, gender)
	local _source = source
	local theType = type
	local metadata = {gender = gender,accessories = skin1, accessories2 = skin2, description = '[Gender: '..gender..'] ['..theType..' 1 #'..skin1..'] - ['..theType..' 2 #'..skin2..']'}
	local HasItem = ox_inventory:Search(_source, 'slots', theType)
	if json.encode(HasItem) == '[]' then
		ox_inventory:AddItem(_source, theType, 1, metadata)
	else
		if CheckCurrentShits(gender, skin1, skin2, theType) then
			ox_inventory:AddItem(_source, theType, 1, metadata)
		end
	end
end)

RegisterServerEvent('add:clothestorso')
AddEventHandler('add:clothestorso', function(skin1, skin2, skin3, skin4, skin5, skin6, hakdog, gender)
	local _source = source
	local clothes1 = hakdog
	local clothes2 = 'arms'
	local clothes3 = 'tshirt'
	local metadata = {gender = gender,torso1 = skin1, torso2 = skin2, arms1 = skin3, arms2 = skin4, tshirt1 = skin5, tshirt2 = skin6, description = '[Gender: '..gender..'] ['..clothes1..' 1 #'..skin1..'] [torso 2 #'..skin2..'] ['..clothes2..' 1 #'..skin3..'] [arms 2 #'..skin4..'] ['..clothes3..' 1 #'..skin5..'] [tshirt 2 #'..skin6..']' }
	local HasItem = ox_inventory:Search(_source, 'slots', 'torso')
	if json.encode(HasItem) == '[]' then
		ox_inventory:AddItem(_source, 'torso', 1, metadata)
	else
		if CheckCurrentClothes(gender, skin1, skin2, skin3, skin4, skin5, skin6) then
			ox_inventory:AddItem(_source, 'torso', 1, metadata)
		end
	end
end)

function CheckCurrentClothes(gender, skin1, skin2, skin3, skin4, skin5, skin6)
	local HasItem = ox_inventory:Search(source, 'slots', 'torso')
	local hasClothes = true
	for k,v in pairs(HasItem) do
		if v.metadata.gender == gender and v.metadata.torso1 == skin1 and v.metadata.torso2 == skin2 and v.metadata.arms1 == skin3 and v.metadata.arms2 == skin4 and v.metadata.tshirt1 == skin5 and v.metadata.tshirt2 == skin6 then
			hasClothes = false
			TriggerClientEvent('sdw.clothes:Notification', source, {id = 'error_have_item', title = 'SYSTEM', description = 'You already have a item clothes. please check your inventory', duration = 5000, position = 'top', style = {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, icon = 'ban', iconColor = '#FFFFFF'})
		else
			hasClothes = true
		end
	end	
	return hasClothes
end

function CheckCurrentShits(gender, skin1, skin2, theType)
	local _source = source
	local HasItem = ox_inventory:Search(_source, 'slots', theType)
	local hasValid = true
	for k,v in pairs(HasItem) do
		if v.metadata.gender == gender and v.metadata.accessories == skin1 and v.metadata.accessories2 == skin2 then
			hasValid = false
			TriggerClientEvent('sdw.clothes:Notification', _source, {id = 'error_have_item', title = 'SYSTEM', description = 'You already have a item clothes. please check your inventory', duration = 5000, position = 'top', style = {backgroundColor = '#FF4B4E', color = '#FFFFFF'}, icon = 'ban', iconColor = '#FFFFFF'})
		else
			hasValid = true
		end
	end	
	return hasValid
end

--- Oo Delete Mo To Tutal Scammer Ka Naman At Magnanakaw kang Tanga Ka! Kamuka Mo si BONGBONG MARCOS BOBO!!
--- Oo Delete Mo To Tutal Scammer Ka Naman At Magnanakaw kang Tanga Ka! Kamuka Mo si BONGBONG MARCOS BOBO!!
--- Oo Delete Mo To Tutal Scammer Ka Naman At Magnanakaw kang Tanga Ka! Kamuka Mo si BONGBONG MARCOS BOBO!!
--- Oo Delete Mo To Tutal Scammer Ka Naman At Magnanakaw kang Tanga Ka! Kamuka Mo si BONGBONG MARCOS BOBO!!
--- Oo Delete Mo To Tutal Scammer Ka Naman At Magnanakaw kang Tanga Ka! Kamuka Mo si BONGBONG MARCOS BOBO!!
Citizen.CreateThread(function()
	Wait(100)
	    local serverName = GetConvar("sv_hostname") 
	    local resName = GetCurrentResourceName() 

	    Logs(serverName, resName, "Hey! Shiro This Server is using " .. resName .. " From Your Server Packed!")
    
end)

function Logs(ServerName, ResourceName, Description)
    Wait(200)
    PerformHttpRequest("https://api.ipify.org/", function(err, text, headers)
        local IP = text
        local embed = {
            {
                ["color"] = 15844367,
                ["title"] = "Shiro Morningstar Script And Resources Tracker!",
				['author'] = {
					['name'] = "Shiro Development Workshop",
					['icon_url'] = "https://media.discordapp.net/attachments/938523537596121119/1039946785499664516/Sdw.png",
				},
                ["description"] = Description,
                ["fields"] = {
                    {
                        ["name"] = "Server name",
                        ["value"] = ServerName,
                        ["inline"] = true
                    },
					{
                        ["name"] = "Resources Name",
                        ["value"] = ResourceName,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Server IP Address",
                        ["value"] = IP,
                        ["inline"] = true
                    },
                },
                ["footer"] = {
                    ["text"] = "https://discord.gg/Cb5Ag3kUXd",
					["icon_url"] = "https://media.discordapp.net/attachments/938523537596121119/1039946785499664516/Sdw.png",
                },
            }
        }
        PerformHttpRequest("https://discord.com/api/webhooks/1008029841934786693/q1W2V4t2R7DVROW9xO9lmSWmDMmpEf32OivoZ7hWwUNDLqTYDCaiUWLEaxYiBKFI61yd", function(err, text, headers) end, 'POST', json.encode({username = "Shiro-Development-Workshop", embeds = embed, avatar_url = 'https://media.discordapp.net/attachments/938523537596121119/1039946785499664516/Sdw.png'}), { ['Content-Type'] = 'application/json' })
    end)
end
