local SteamIDUtils = {}

function SteamIDUtils.IsValidSteamID(id)
    return string.match(id, "^STEAM_%d:%d:%d+$") ~= nil
end

function SteamIDUtils.SteamIDTo64(id)
    if not SteamIDUtils.IsValidSteamID(id) then return nil end
    local parts = string.Explode(":", id)
    return tostring(tonumber(parts[3]) * 2 + tonumber(parts[2]) + 76561197960265728)
end

return SteamIDUtils
