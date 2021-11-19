local funcs = {}

local function getSpeaker(sgui)
    local bbgui = sgui
    local playerchar = bbgui.Adornee.Parent
    return game:GetService("Players")[playerchar.Name]
end

function funcs:getSpeakers()
    local gui = game:GetService("CoreGui").BubbleChat
    local players = {}
    for i,v in pairs(gui:GetChildren()) do
        table.insert(players,getSpeaker(v))
    end
    return players
end
function funcs:isSpeaker(plr)
    local speakers = funcs:getSpeakers()
    if table.find(speakers,plr) then
        return true
    else
        return false
    end
end

return funcs
