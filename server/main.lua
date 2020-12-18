ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local timeInJail = {}
local HandcuffStatus = {}
local TrunkStatus = {}

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'police', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'police', 'Policija', true, true)
TriggerEvent('esx_society:registerSociety', 'police', 'Police', 'society_police', 'society_police', 'society_police', {type = 'public'})

RegisterServerEvent('esx_policejob:confiscatePlayerItem')
AddEventHandler('esx_policejob:confiscatePlayerItem', function(target, itemType, itemName, amount)
	local _source = source
	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)

	if itemType == 'item_standard' then
		local targetItem = targetXPlayer.getInventoryItem(itemName)
		local sourceItem = sourceXPlayer.getInventoryItem(itemName)

		-- does the target player have enough in their inventory?
		if targetItem.count > 0 and targetItem.count <= amount then
		
			-- can the player carry the said amount of x item?
			if sourceItem.limit ~= -1 and (sourceItem.count + amount) > sourceItem.limit then
				--TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
			else
				targetXPlayer.removeInventoryItem(itemName, amount)
				sourceXPlayer.addInventoryItem   (itemName, amount)
				--TriggerClientEvent('esx:showNotification', _source, _U('you_confiscated', amount, sourceItem.label, targetXPlayer.name))
				--TriggerClientEvent('esx:showNotification', target,  _U('got_confiscated', amount, sourceItem.label, sourceXPlayer.name))

			end
		else
			--TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
		end

	elseif itemType == 'item_account' then
		targetXPlayer.removeAccountMoney(itemName, amount)
		sourceXPlayer.addAccountMoney   (itemName, amount)

		--TriggerClientEvent('esx:showNotification', _source, _U('you_confiscated_account', amount, itemName, targetXPlayer.name))
		--TriggerClientEvent('esx:showNotification', target,  _U('got_confiscated_account', amount, itemName, sourceXPlayer.name))

	elseif itemType == 'item_weapon' then
		if amount == nil then amount = 0 end
		targetXPlayer.removeWeapon(itemName, amount)
		sourceXPlayer.addWeapon   (itemName, amount)

		--TriggerClientEvent('esx:showNotification', _source, _U('you_confiscated_weapon', ESX.GetWeaponLabel(itemName), targetXPlayer.name, amount))
		--TriggerClientEvent('esx:showNotification', target,  _U('got_confiscated_weapon', ESX.GetWeaponLabel(itemName), amount, sourceXPlayer.name))
	end
end)

RegisterServerEvent('esx_policejob:handcuff')
AddEventHandler('esx_policejob:handcuff', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	local tPlayer = ESX.GetPlayerFromId(target)
	if HandcuffStatus[target] == nil then
		HandcuffStatus[target] = false	
	end
	HandcuffStatus[target]= not HandcuffStatus[target]
	TriggerClientEvent('esx_policejob:handcuff', target)
	TriggerClientEvent('esx_policejob:playAnim', source, 'mp_arresting', 'a_uncuff')
	TriggerClientEvent('esx_policejob:playAnim', target, 'mp_arresting', 'b_uncuff')
	
end)

RegisterServerEvent('esx_policejob:drag')
AddEventHandler('esx_policejob:drag', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_policejob:drag', target, source)
end)

RegisterServerEvent('esx_policejob:putInVehicle')
AddEventHandler('esx_policejob:putInVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_policejob:putInVehicle', target)
end)

RegisterServerEvent('esx_policejob:OutVehicle')
AddEventHandler('esx_policejob:OutVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_policejob:OutVehicle', target)
end)

RegisterServerEvent('esx_policejob:getStockItem')
AddEventHandler('esx_policejob:getStockItem', function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_police', function(inventory)

		local inventoryItem = inventory.getItem(itemName)

		-- is there enough in the society?
		if count > 0 and inventoryItem.count >= count then
		
			-- can the player carry the said amount of x item?
			if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
				--TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
			else
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				--TriggerClientEvent('esx:showNotification', _source, _U('have_withdrawn', count, inventoryItem.label))
			end
		else
			--TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
		end
	end)

end)

RegisterServerEvent('esx_policejob:putStockItems')
AddEventHandler('esx_policejob:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_police', function(inventory)

		local inventoryItem = inventory.getItem(itemName)

		-- does the player have enough of the item?
		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			--TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_deposited', count, inventoryItem.label))
		else
			--TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

	end)

end)

ESX.RegisterServerCallback('esx_policejob:getOtherPlayerData', function(source, cb, target)

	if Config.EnableESXIdentity then

		local xPlayer = ESX.GetPlayerFromId(target)

		local result = MySQL.Sync.fetchAll('SELECT firstname, lastname, sex, dateofbirth, height FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		})

		local firstname = result[1].firstname
		local lastname  = result[1].lastname
		local sex       = result[1].sex
		local dob       = result[1].dateofbirth
		local height    = result[1].height

		local data = {
			name      = GetPlayerName(target),
			job       = xPlayer.job,
			inventory = xPlayer.inventory,
			accounts  = xPlayer.accounts,
			weapons   = xPlayer.loadout,
			firstname = firstname,
			lastname  = lastname,
			sex       = sex,
			dob       = dob,
			height    = height
		}

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status ~= nil then
				data.drunk = math.floor(status.percent)
			end
		end)

		if Config.EnableLicenses then
			TriggerEvent('esx_license:getLicenses', target, function(licenses)
				data.licenses = licenses
				cb(data)
			end)
		else
			cb(data)
		end

	else

		local xPlayer = ESX.GetPlayerFromId(target)

		local data = {
			name       = GetPlayerName(target),
			job        = xPlayer.job,
			inventory  = xPlayer.inventory,
			accounts   = xPlayer.accounts,
			weapons    = xPlayer.loadout
		}

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status ~= nil then
				data.drunk = math.floor(status.percent)
			end
		end)

		TriggerEvent('esx_license:getLicenses', target, function(licenses)
			data.licenses = licenses
		end)

		cb(data)

	end

end)

ESX.RegisterServerCallback('esx_policejob:getArmoryWeapons', function(source, cb)

	TriggerEvent('esx_datastore:getSharedDataStore', 'society_police', function(store)
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		cb(weapons)
	end)

end)

ESX.RegisterServerCallback('esx_policejob:addArmoryWeapon', function(source, cb, weaponName, removeWeapon)
	local xPlayer = ESX.GetPlayerFromId(source)

	if removeWeapon then
		xPlayer.removeWeapon(weaponName)
	end
	--TriggerClientEvent('esx:showNotification', source, 'poszlo '..weaponName)
	TriggerEvent('esx_datastore:getSharedDataStore', 'society_police', function(store)

		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i=1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = weapons[i].count + 1
				foundWeapon = true
				break
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name  = weaponName,
				count = 1
			})
		end

		store.set('weapons', weapons)
		cb()
	end)

end)

ESX.RegisterServerCallback('esx_policejob:removeArmoryWeapon', function(source, cb, weaponName)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.addWeapon(weaponName, 500)
	TriggerEvent('srp_logs:policeArmoryLog',source,'police',weaponName,1)
	--TriggerClientEvent('esx:showNotification', source, 'Dwa')
	TriggerEvent('esx_datastore:getSharedDataStore', 'society_police', function(store)

		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i=1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
				foundWeapon = true
				break
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name  = weaponName,
				count = 0
			})
		end

		store.set('weapons', weapons)
		cb()
	end)

end)

ESX.RegisterServerCallback('esx_policejob:buyWeapon', function(source, cb, weaponName, type, componentNum)
	local xPlayer = ESX.GetPlayerFromId(source)
	local authorizedWeapons, selectedWeapon = Config.AuthorizedWeapons.Shared
	--TriggerClientEvent('esx:showNotification', source, 'Trzy')
	for k,v in ipairs(authorizedWeapons) do
		if v.weapon == weaponName then
			selectedWeapon = v
			break
		end
	end

	if not selectedWeapon then
		print(('esx_policejob: %s attempted to buy an invalid weapon.'):format(xPlayer.identifier))
		cb(false)
	end

	-- Weapon
	if type == 1 then
		if xPlayer.getMoney() >= selectedWeapon.price then
			xPlayer.removeMoney(selectedWeapon.price)
			xPlayer.addWeapon(weaponName, 220)

			cb(true)
		else
			cb(false)
		end

	-- Weapon Component
	elseif type == 2 then
		local price = selectedWeapon.components[weaponComponent]
		local weaponNum, weapon = ESX.GetWeapon(weaponName)

		local component = weapon.components[componentNum]

		if component then
			if xPlayer.getMoney() >= selectedWeapon.price then
				xPlayer.removeMoney(selectedWeapon.price)
				xPlayer.addWeaponComponent(weaponName, component.name)

				cb(true)
			else
				cb(false)
			end
		else
			print(('esx_policejob: %s attempted to buy an invalid weapon component.'):format(xPlayer.identifier))
			cb(false)
		end
	end
end)

ESX.RegisterServerCallback('esx_policejob:storeNearbyVehicle', function(source, cb, nearbyVehicles)
	local xPlayer = ESX.GetPlayerFromId(source)
	local foundPlate, foundNum

	for k,v in ipairs(nearbyVehicles) do
		local result = MySQL.Sync.fetchAll('SELECT plate FROM owned_vehicles WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = v.plate,
			['@job'] = xPlayer.job.name
		})

		if result[1] then
			foundPlate, foundNum = result[1].plate, k
			break
		end
	end

	if not foundPlate then
		cb(false)
	else
		MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = true WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = foundPlate,
			['@job'] = xPlayer.job.name
		}, function (rowsChanged)
			if rowsChanged == 0 then
				print(('esx_policejob: %s has exploited the garage!'):format(xPlayer.identifier))
				cb(false)
			else
				cb(true, foundNum)
			end
		end)
	end

end)

ESX.RegisterServerCallback('esx_policejob:storeNearbyVehicle', function(source, cb, nearbyVehicles)
	local xPlayer = ESX.GetPlayerFromId(source)
	local foundPlate, foundNum

	for k,v in ipairs(nearbyVehicles) do
		local result = MySQL.Sync.fetchAll('SELECT plate FROM owned_vehicles WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = v.plate,
			['@job'] = xPlayer.job.name
		})

		if result[1] then
			foundPlate, foundNum = result[1].plate, k
			break
		end
	end

	if not foundPlate then
		cb(false)
	else
		MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = true WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = foundPlate,
			['@job'] = xPlayer.job.name
		}, function (rowsChanged)
			if rowsChanged == 0 then
				print(('esx_policejob: %s has exploited the garage!'):format(xPlayer.identifier))
				cb(false)
			else
				cb(true, foundNum)
			end
		end)
	end

end)

ESX.RegisterServerCallback('esx_policejob:getStockItems', function(source, cb)
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_police', function(inventory)
		cb(inventory.items)
	end)
end)

ESX.RegisterServerCallback('esx_policejob:getPlayerInventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory

	cb( { items = items } )
end)

AddEventHandler('playerDropped', function()
	-- Save the source in case we lose it (which happens a lot)
	local _source = source
	
	-- Did the player ever join?
	if _source ~= nil then
		local xPlayer = ESX.GetPlayerFromId(_source)
		
		-- Is it worth telling all clients to refresh?
		if xPlayer ~= nil and xPlayer.job ~= nil and xPlayer.job.name == 'police' then
			Citizen.Wait(5000)
			TriggerClientEvent('esx_policejob:updateBlip', -1)
		end
	end	
end)

RegisterServerEvent('esx_policejob:spawned')
AddEventHandler('esx_policejob:spawned', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if xPlayer ~= nil and xPlayer.job ~= nil and xPlayer.job.name == 'police' then
		Citizen.Wait(5000)
		TriggerClientEvent('esx_policejob:updateBlip', -1)
	end
end)

RegisterServerEvent('esx_policejob:forceBlip')
AddEventHandler('esx_policejob:forceBlip', function()
	TriggerClientEvent('esx_policejob:updateBlip', -1)
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(5000)
		TriggerClientEvent('esx_policejob:updateBlip', -1)
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent('esx_phone:removeNumber', 'police')
	end
end)

RegisterServerEvent('esx_policejob:message')
AddEventHandler('esx_policejob:message', function(target, msg)
	--TriggerClientEvent('esx:showNotification', target, msg)
end)

RegisterServerEvent('esx_policejob:handcuffPed')
AddEventHandler('esx_policejob:handcuffPed', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_policejob:handcuffPed', -1, target)
	TriggerClientEvent('esx_policejob:playAnim', source, 'mp_arresting', 'a_uncuff')
	TriggerClientEvent('esx_policejob:playAnimPed', -1, 'mp_arresting', 'b_uncuff', target)
end)

RegisterServerEvent('esx_policejob:dragPed')
AddEventHandler('esx_policejob:dragPed', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_policejob:dragPed', -1, target, source)
end)

RegisterServerEvent('esx_policejob:putInVehiclePed')
AddEventHandler('esx_policejob:putInVehiclePed', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_policejob:putInVehiclePed', -1, target)
end)

RegisterServerEvent('esx_policejob:OutVehiclePed')
AddEventHandler('esx_policejob:OutVehiclePed', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_policejob:OutVehiclePed', -1, target)
end)

RegisterServerEvent('esx_policejob:bodySearchPed')
AddEventHandler('esx_policejob:bodySearchPed', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local r = math.random(1,5)
	if r == 2 then
		xPlayer.addInventoryItem('water', 1)
		--TriggerClientEvent('esx:showNotification', source, '~g~Obywatel miał przy sobie jedną wodę')
	elseif r == 3 then
		xPlayer.addInventoryItem('bread', 1)
		--TriggerClientEvent('esx:showNotification', source, '~g~Obywatel miał przy sobie jeden chleb')
	elseif r == 4 then
		xPlayer.addInventoryItem('blowpipe', 1)
		--TriggerClientEvent('esx:showNotification', source, '~g~Obywatel miał przy sobie jeden wytrych')
	else
		--TriggerClientEvent('esx:showNotification', source, '~g~Obywatel nic przy sobie nie miał')
	end
end)

RegisterServerEvent('esx_policejob:pay')
AddEventHandler('esx_policejob:pay', function(amount, target, charge, itsJail)
	amount = tonumber(amount)
	local xPlayer = ESX.GetPlayerFromId(target)
	xPlayer.removeBank(amount)
	if itsJail then
		GetRPName(target, function(firstname, lastname)
		end)
	end
end)

RegisterServerEvent('esx_policejob:jail')
AddEventHandler('esx_policejob:jail', function(amount, target, itsJail)
	amount = tonumber(amount)
	local xPlayer = ESX.GetPlayerFromId(target)
	xPlayer.removeBank(amount)
	if itsJail then
		GetRPName(target, function(firstname, lastname, jailReason, jailTime)
			--TriggerClientEvent('chat:addMessage', -1, { args = { "[NEWS]",  "^4" .. firstname .. " " .. lastname .. "^7 otrzymał mandat w wysokości ^4" .. amount .. "$^7 za ^4" .. charge}, color = { 255, 166, 0 } })
			TriggerClientEvent('chat:addMessage', -1, { args = { "[Vijesi]",  "^4" .. firstname .. " " .. lastname .. "^7 je osudjen na^4" .. jailTime .. "^7 mjeseci i novcana kazna od ^4" .. amount .. "^7za ^4" .. jailReason}, color = { 255, 166, 0 } })
		end)
	end
end)

RegisterServerEvent('esx_policejob:unrestrain')
AddEventHandler('esx_policejob:unrestrain', function(target)
	TriggerClientEvent('esx_policejob:unrestrain', target)
end)

ESX.RegisterUsableItem('handcuffs', function(source)
	TriggerClientEvent('esx_policejob:openHandcuffs', source)
end)

RegisterServerEvent('esx_policejob:get_item')
AddEventHandler('esx_policejob:get_item', function(itemLabel, itemName, itemCount)
	local sourceXPlayer = ESX.GetPlayerFromId(source)
	local sourceItem = sourceXPlayer.getInventoryItem(itemName)
	if sourceItem.limit ~= -1 and (sourceItem.count + itemCount) > sourceItem.limit then
		--TriggerClientEvent('esx:showNotification', source, '~r~Nie możesz wziąć więcej')
	else
		sourceXPlayer.addInventoryItem(itemName, itemCount)
		--TriggerClientEvent('esx:showNotification', source, 'Wziąłeś ~g~x' .. itemCount .. ' ' .. itemLabel)
	end
end)


function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	if identifier == nil then 
		return nil
	end
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]
		return {
			identifier = identifier,
			firstname = identity.firstname,
			lastname = identity.lastname,
			dateofbirth = identity.dateofbirth,	
			sex = identity.sex,
			height = identity.height,
			job = identity.job
		}
	else
		return nil
	end
end

function GetRPName(playerId, data)
	local Identifier = ESX.GetPlayerFromId(playerId).identifier
	MySQL.Async.fetchAll("SELECT firstname, lastname FROM users WHERE identifier = @identifier", { ["@identifier"] = Identifier }, function(result)
		data(result[1].firstname, result[1].lastname)
	end)
end

RegisterServerEvent("policejob:alert")
AddEventHandler("policejob:alert", function(drogi)
	TriggerClientEvent("outlawNotify", -1, "[^7Centrala]: ^810-13 ^7 - povrijedjen policajac^7 | ^3na ulici ^7" ..drogi)
end)

RegisterServerEvent("policejob:alert1")
AddEventHandler("policejob:alert1", function(x, y, z) 
    TriggerClientEvent('police:infodlalspd', -1, x, y, z)
end)


RegisterServerEvent('zrider:TrunkKidnappingServer')
AddEventHandler('zrider:TrunkKidnappingServer', function(target)
    -- zapisanie pod zmienne o innych nazwach źródło i cel 
    local src = source
	local targetPlayer = target

    --wyświetla w konsoli serwera kto kogo wsadza
    ('Kamere su snimile nekoga kako kidnapuje osobu'..src..''..targetPlayer)
    -- wywołuje skrypt dla wsadzanego gracza
    TriggerClientEvent('zrider:TrunkKidnappingExecuteOnTarget', targetPlayer)
end,true)
--[[
RegisterServerEvent('zrider:TrunkKidnapping_KidnaperNotify')
AddEventHandler('zrider:TrunkKidnapping_KidnaperNotify', function()
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'test', lenght=10000 })
end)
]]

ESX.RegisterServerCallback('zrider:targetCuffsCallback', function(source, cb, target)
	if HandcuffStatus[target]== nil then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Oteta osoba mora biti vezana lisicama!', lenght=3000 })
		cb(false)
	elseif HandcuffStatus[target]== false then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Oteta osoba mora biti vezana lisicama!', lenght=3000 })
		cb(false)
	else
		if TrunkStatus[target] == nil then
			TrunkStatus[target] = true
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stavili ste '..GetPlayerName(target), lenght=3000 })
		elseif TrunkStatus[target] == false then
			TrunkStatus[target] = true
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stavili ste '..GetPlayerName(target), lenght=3000 })
		else
			TrunkStatus[target] = false
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Izvadili ste '..GetPlayerName(target), lenght=3000 })
		end
		cb(true)
	end
end)

RegisterNetEvent('esx_policejob:addLicense')
AddEventHandler('esx_policejob:addLicense', function(type)
	local _source = source

	TriggerEvent('esx_license:addLicense', _source, type, function()
		TriggerEvent('esx_license:getLicenses', _source, function(licenses)
			TriggerClientEvent('esx_policejob:loadLicenses', _source, licenses)
		end)
	end)
end)

