-- Remove the waypoint from the map --
RegisterNetEvent("vrp:remove")
AddEventHandler("vrp:remove", function()
    SetWaypointOff()
end)

-- Los Santos Customs --
RegisterNetEvent("vrp:waypoint1")
AddEventHandler("vrp:waypoint1", function()
    SetNewWaypoint(-362.17034912109,-132.5562286377)
end)

-- Los Santos Airport --
RegisterNetEvent("vrp:waypoint2")
AddEventHandler("vrp:waypoint2", function()
    SetNewWaypoint(-983.80578613281,-2825.6137695313)
end)

-- Los Santos Port --
RegisterNetEvent("vrp:waypoint3")
AddEventHandler("vrp:waypoint3", function()
    SetNewWaypoint(560.68420410156,-2565.8044433594)
end)

-- Sandy Shores Airport --
RegisterNetEvent("vrp:waypoint4")
AddEventHandler("vrp:waypoint4", function()
    SetNewWaypoint(1775.6291503906,3267.8835449219)
end)