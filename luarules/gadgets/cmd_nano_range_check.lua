function gadget:GetInfo()
	return {
		name = "Construction Turrets Range Check",
		desc = "Stops construction turrets from getting assigned to guards, repair, reclaim and attacks out of reach.",
		author = "Nehroz",
		date = "2024.11.09", -- update date.
		license = "GNU GPL, v2 or later",
		layer = 0,
		version = "1.0",
		enabled = true,
	}
end

local frequency = 10 -- only applies to movable units under tracked nanos.
--- key is the nano's ID, followed by a Set-like with the unitID of target currently inside the nano's range.
--- Used for CommandArray manipulation
---@type {[number] : {number : boolean}}
local trackingTable = {}

local function isNano(unitDef)
	return unitDef.isFactory == false and unitDef.isStaticBuilder
end

local function isValidCommandID(commandID)
	return (
		   commandID == CMD.REPAIR
		or commandID == CMD.GUARD
		or commandID == CMD.RECLAIM
		or commandID == CMD.ATTACK
	)
end

local function reindexArray(tbl)
	local newTbl = {}
	for _, value in pairs(tbl) do
		table.insert(newTbl, value)
	end
	return newTbl
end

local function cmdToCmdSpec(tbl)
	local newTbl = {}
	for _, cmd in pairs(tbl) do
		table.insert(newTbl, {cmd.id, cmd.params, cmd.options})
	end
	return newTbl
end

function gadget:GameFrame(frame)
	if frame % frequency ~= 0 then return end
	for nanoID in pairs(trackingTable) do
		if not Spring.ValidUnitID(nanoID) then
			trackingTable[nanoID] = nil
		else
			local nanoDef = UnitDefs[Spring.GetUnitDefID(nanoID)]
			local maxDistance = nanoDef.buildDistance + nanoDef.radius
			local cmds = Spring.GetUnitCommands(nanoID, -1)
			local isChanged = false

			for i, cmd in pairs(cmds) do
				local uID = cmd.params[1]
				if Spring.ValidUnitID(uID) then
					local distance = Spring.GetUnitSeparation(nanoID, uID, nanoDef.buildRange3D, false)
					if distance < maxDistance then -- Inside range
						trackingTable[nanoID][uID] = true
					elseif trackingTable[nanoID][uID] then -- Outside range
						trackingTable[nanoID][uID] = nil
						cmds[i] = nil
						isChanged = true
					end
				end
			end

			if isChanged then
				if #cmds > 0 then
					cmds = reindexArray(cmds)
					cmds[1].options.shift = false -- Ensure proper command behavior
					Spring.GiveOrderArrayToUnit(nanoID, cmdToCmdSpec(cmds))
				else
					trackingTable[nanoID] = nil
					Spring.GiveOrderToUnit(nanoID, CMD.STOP, {}, {})
				end
			end
		end
	end
end

function gadget:AllowCommand(unitID, unitDefID, _teamID, cmdID,
	cmdParams, _cmdOptions, _cmdTag, _synced, _fromLua)

	local unitDef = UnitDefs[unitDefID]
	if not isNano(unitDef) then return true end
	if not isValidCommandID(cmdID) then return true end
	if #cmdParams ~= 1 then return true end -- only handle ID targets, fallthrough for area selects; Let the intended scripts handle, catch resulting commands on ID.
	local distance = math.huge
	local targetId = cmdParams[1]

	if targetId < Game.maxUnits then
		if not Spring.ValidUnitID(targetId) then return end
		local targetUnitDef = UnitDefs[Spring.GetUnitDefID(targetId)]
		if targetUnitDef.canMove then
			if not trackingTable[unitID] then
				trackingTable[unitID] = {}
			end
			return true
		end
		distance = Spring.GetUnitSeparation(unitID, targetId, unitDef.buildRange3D, false)
	else
		targetId = targetId - Game.maxUnits
		if not Spring.ValidFeatureID(targetId) then return end
		distance = Spring.GetUnitFeatureSeparation(unitID, targetId, false)
	end

	if distance > (unitDef.buildDistance + unitDef.radius) then
		return false
	end
	return true
end

function gadget:UnitDestroyed(unitID)
	for nanoID in pairs(trackingTable) do
		if nanoID == unitID then
			trackingTable[nanoID] = nil
		end
	end
	for nanoID, v in pairs(trackingTable) do
		if v == unitID then
			trackingTable[nanoID][unitID] = nil
		end
	end
end