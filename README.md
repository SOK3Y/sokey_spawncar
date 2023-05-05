Prosty skrypt na respienie aut pod qtarget. Jeżeli chcecie zrobić kolejne respy robicie sobie pliku .lua w folderze client i robicie

ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('spawn-car:trigger')
AddEventHandler('spawn-car:trigger', function()
	local coords = vector3(tutaj coordy)
	local heading = tutaj heading
	if ESX.Game.IsSpawnPointClear(coords, 5) then
	ESX.Game.SpawnVehicle('nazwa auta', coords, heading, function(vehicle)
	platenum = math.random(100, 2000)
	local plate =  "Tablica"..platenum
	SetVehicleNumberPlateText(vehicle, plate)
	SetPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
    TriggerServerEvent('sokey-addkeys', plate) -- dodawanie kluczkyow
        ESX.ShowNotification('Auto czeka na zewnątrz!') -- powiadomienie
    end)
else
	ESX.ShowNotification('Miejsce wyjmowania pojazdu jest zastawione') -- powiadomienie
end
end)


exports.qtarget:AddBoxZone("autotest", vector3(coordy oczka), 1, 1, {
	name="autotest",
	heading=0.0,
	--debugPoly=false,
	minZ=21.33,
	maxZ=30.33,
	}, {
		options = {
			{
				event = "spawn-car:trigger",
				icon = "fas fa-hands", -- ikonka
				label = "Nazwa",
				-- job = "taco", -- tutaj se dajecie joba
                num = 1
			},
			
		},
		distance = 2
})
