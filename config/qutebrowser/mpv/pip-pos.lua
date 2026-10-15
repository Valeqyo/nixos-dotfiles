-- Ricorda l'ultima posizione e la scrive su file quando mpv si chiude
local last = nil
mp.observe_property("time-pos", "number", function(_, v)
    if v then last = v end
end)
mp.register_event("shutdown", function()
    local path = mp.get_opt("pip-posfile")
    if last and path then
        local f = io.open(path, "w")
        if f then
            f:write(string.format("%d", math.floor(last)))
            f:close()
        end
    end
end)
