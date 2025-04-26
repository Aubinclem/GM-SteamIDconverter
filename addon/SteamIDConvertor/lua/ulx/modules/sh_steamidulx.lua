if not STEAMIDUTILS then
    MsgC(Color(255, 0, 0), "[SteamIDUtils] Erreur : la bibliothèque n'est pas chargée !\n")
    return
end

-- Fonction ULX
function ulx.steamid64(caller, target_steamid)
    if not STEAMIDUTILS.IsValidSteamID(target_steamid) then
        ULib.tsayError(caller, "SteamID invalide.", true)
        return
    end

    local steamid64 = STEAMIDUTILS.SteamIDTo64(target_steamid)
    ulx.fancyLog({caller}, "SteamID64 de #s : #s", target_steamid, steamid64)
end

-- Déclaration de la commande
local steamid64_command = ulx.command("Utilitaires", "ulx steamid64", ulx.steamid64, "!steamid64")
steamid64_command:addParam{ type=ULib.cmds.StringArg, hint="SteamID" }
steamid64_command:defaultAccess(ULib.ACCESS_ALL)
steamid64_command:help("Convertit un SteamID en SteamID64.")
