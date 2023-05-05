ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('spawn-car:taco')
AddEventHandler('spawn-car:taco', function()
	local coords = vector3(20.4126, -1608.7031, 29.2824)
	local heading = 138.0170
	if ESX.Game.IsSpawnPointClear(coords, 5) then
	ESX.Game.SpawnVehicle('taco', coords, heading, function(vehicle)
	platenum = math.random(100, 2000)
	local plate =  "Taco"..platenum
	SetVehicleNumberPlateText(vehicle, plate)
	SetPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
    TriggerServerEvent('sokey-addkeys', plate)
	ambulanceTaken = true
        ESX.ShowNotification('Auto czeka na zewnątrz!')
    end)
else
	ESX.ShowNotification('Miejsce wyjmowania pojazdu jest zastawione')
end
end)

RegisterNetEvent('spawn-car:taco2')
AddEventHandler('spawn-car:taco2', function()
	local coords = vector3(20.4126, -1608.7031, 29.2824)
	local heading = 138.0170
	if ESX.Game.IsSpawnPointClear(coords, 5) then
	ESX.Game.SpawnVehicle('speedo', coords, heading, function(vehicle)
	platenum = math.random(100, 2000)
	local plate =  "Taco"..platenum
	SetVehicleNumberPlateText(vehicle, plate)
	SetPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
    TriggerServerEvent('sokey-addkeys', plate)
	ambulanceTaken = true
    ESX.ShowNotification('Auto czeka na zewnątrz!')
    end)
else
	ESX.ShowNotification('Miejsce wyjmowania pojazdu jest zastawione')
end
end)


exports.qtarget:AddBoxZone("autataco", vector3(20.53, -1603.26, 29.38), 2, 2, {
	name="autataco",
	heading=0.0,
	--debugPoly=false,
	minZ=21.33,
	maxZ=30.33,
	}, {
		options = {
			{
				event = "spawn-car:taco",
				icon = "fas fa-hands",
				label = "Wyciągnij pojazd SPEEDO",
				-- job = "taco",
                num = 1
			},
			{
				event = "spawn-car:taco2",
				icon = "fas fa-hands",
				label = "Wyciągnij pojazd TACO",
				-- job = "taco",
                num = 2
			},
			
		},
		distance = 2
})
