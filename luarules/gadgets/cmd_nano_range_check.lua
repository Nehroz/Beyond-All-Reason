function gadget:GetInfo()
    return {
        name = "Construction Turrets Range Check",
        desc = "Stops construction turrets from getting assigned to guards, repair, reclaim and attacks out of reach.",
        author = "Nehroz",
        date = "2024.11.05", -- update date.
        license = "GNU GPL, v2 or later",
        layer = 0,
        version = "1.0",
        enabled = true,
    }
end

local function isNano(unitDef)
    return unitDef.isImmobile and unitDef.isBuilder
end

local function isValidCommandID(commandID)
    return (
        commandID == CMD.REPAIR
        or commandID == CMD.GUARD
        or commandID == CMD.RECLAIM
        or commandID == CMD.ATTACK
    )
end

function gadget:AllowCommand(unitID, unitDefID, _teamID, cmdID, cmdParams, _cmdOptions)
    local unitDef = UnitDefs[unitDefID]
    if not isNano(unitDef) then return true end
    if not isValidCommandID(cmdID) then return true end
    if #cmdParams ~= 1 then return true end -- only handle ID targets, fallthrough for area select; let the intended scripts handle those first.
    if not UnitDefs[Spring.GetUnitDefID(cmdParams[1])].isImmobile then return true end

    local range = unitDef.buildDistance
    local x, y, z = Spring.GetUnitPosition(unitID)
    local cmdX, cmdY, cmdZ = Spring.GetUnitPosition(cmdParams[1])
    if cmdX == nil then return true end -- in case of feature
    local distance = math.sqrt((cmdX - x)^2 + (cmdY - y)^2 + (cmdZ - z)^2)
    if distance > (range + unitDef.radius) then
        return false
    end
    return true
end