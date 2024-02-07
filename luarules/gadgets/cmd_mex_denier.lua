function gadget:GetInfo()
	return {
		name = "Deny Invalid Mex Orders",
		desc = "Denies mex build orders where there's no 100% yield",
		author = "badosu",
		version = "v1.0",
		date = "December 2023",
		license = "GNU GPL, v2 or later",
		layer = 1,
		enabled = true,
	}
end

-- Some of these maps have more than 2 metal spots, disable mex denier
local metalMaps = {
	["Oort_Cloud_V2"] = true,
	["Asteroid_Mines_V2.1"] = true,
	["Cloud9_V2"] = true,
	["Iron_Isle_V1"] = true,
	["Nine_Metal_Islands_V1"] = true,
	["SpeedMetal BAR V2"] = true,
}

if not gadgetHandler:IsSyncedCode() then
	return
end

local isMex = {}
for uDefID, uDef in pairs(UnitDefs) do
	if uDef.extractsMetal > 0 then
		isMex[uDefID] = true
	end
end

local metalSpotsList

function gadget:Initialize()
	if metalMaps[Game.mapName] then
		Spring.Echo(gadget:GetInfo().name, "Indiscrete metal map detected, removing self")

		gadgetHandler:RemoveGadget(self)
	end

	metalSpotsList = GG["resource_spot_finder"] and GG["resource_spot_finder"].metalSpotsList

	-- no metal spots in map or metalmap
	-- gadget is not required
	if not metalSpotsList or #metalSpotsList <= 2 then
		Spring.Echo(gadget:GetInfo().name, "None, 1 or 2 metal spots found, removing self")

		gadgetHandler:RemoveGadget(self)
	end
end

-- function gadget:AllowCommand(unitID, unitDefID, unitTeam, cmdID, cmdParams, cmdOptions, cmdTag, playerID, fromSynced, fromLua)
function gadget:AllowCommand(_, _, _, cmdID, cmdParams)
	if not isMex[-cmdID] then
		return true
	end

	local bx, bz = cmdParams[1], cmdParams[3]
	-- We find the closest metal spot to the assigned command position
	local closestSpot = math.getClosestPosition(bx, bz, metalSpotsList)

	-- We check if current order is to build mex in closest spot
	if not (closestSpot and GG["resource_spot_finder"].IsMexPositionValid(closestSpot, bx, bz)) then
		return false
	end

	return true
end
