local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

local function ch_remove(player,choice) 
    TriggerClientEvent("vrp:remove", player)
end

local function ch_waypoint1(player,choice) 
    TriggerClientEvent("vrp:waypoint1", player)
end

local function ch_waypoint2(player,choice) 
    TriggerClientEvent("vrp:waypoint2", player)
end

local function ch_waypoint3(player,choice) 
    TriggerClientEvent("vrp:waypoint3", player)
end

local function ch_waypoint4(player,choice) 
    TriggerClientEvent("vrp:waypoint4", player)
end

vRP.registerMenuBuilder({"main", function(add, data)
    local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
        local choices = {}
  
        choices["GPS"] = {function(player,choice)
            vRP.buildMenu({"GPS", {player = player}, function(menu)
                menu.name = "Destination"
                menu.css={top="75px",header_color="rgba(255,128,0,0.75)"}
                menu.onclose = function(player) vRP.openMainMenu({player}) end
  
                menu["> Remove waypoint"] = {ch_remove,"Remove the waypoint from the map."}
                menu["Los Santos Customs"] = {ch_waypoint1}
                menu["Los Santos Airport"] = {ch_waypoint2}
                menu["Los Santos Port"] = {ch_waypoint3} 
                menu["Sandy Shores Airport"] = {ch_waypoint4}

                vRP.openMenu({player,menu})
            end})
        end, "Can help you find way."}

      add(choices)
    end
end})