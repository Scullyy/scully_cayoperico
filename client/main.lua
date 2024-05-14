local config = require 'config'
local islandIpls = require 'data.ipl'
local playerState = LocalPlayer.state

local function requestIpls()
    for i = 1, #islandIpls do
        local ipl = islandIpls[i]

        if not IsIplActive(ipl) then
            RequestIpl(ipl)
        end
    end
end

local function setEntitySet()
    local interior = 280065

    if not IsValidInterior(interior) then return end

    for i = 1, #config.entitySets do
        local entitySet = config.entitySets[i]
        local isActive = IsInteriorEntitySetActive(interior, entitySet.name)

        if entitySet.enable and not isActive then
            ActivateInteriorEntitySet(interior, entitySet.name)
            SetInteriorEntitySetColor(interior, entitySet.name, entitySet.color)
        elseif isActive then
            DeactivateInteriorEntitySet(interior, entitySet.name)
        end
    end
end

---@param bool boolean
local function enableRadioStations(bool)
    if not config.radioStations.disable then return end

    local showNoSignal = config.radioStations.showNoSignal

    if not showNoSignal then
        SetAudioFlag('PlayerOnDLCHeist4Island', not bool)
        return
    end

    for name, disable in pairs(config.radioStations.stations) do
        if disable then
            SetRadioStationIsVisible(name, bool)
        else
            showNoSignal = false
        end
    end

    if not showNoSignal then return end

    local text = bool and locale('radio_off') or locale('no_signal')

    AddTextEntry('CAR_RADOFF', text)
    AddTextEntry('MO_RADOFF', text)
end

local function isNearIsland()
    local coords = GetEntityCoords(cache.ped)
    local distance = #(coords - config.islandCoords)

    return distance < 2000
end

---@param bool boolean
local function enableIslandFeatures(bool)
    playerState.onCayoPerico = bool

    SetAiGlobalPathNodesType(bool and 1 or 0)
    LoadGlobalWaterType(bool and 1 or 0)
    SetScenarioGroupEnabled('Heist_Island_Peds', bool)
    SetAmbientZoneListStatePersistent('AZL_DLC_Hei4_Island_Zones', bool, bool)
    SetAmbientZoneListStatePersistent('AZL_DLC_Hei4_Island_Disabled_Zones', not bool, bool)

    if bool then SetDeepOceanScaler(0.0) else ResetDeepOceanScaler() end

    enableRadioStations(not bool)
end

local SetRadarAsExteriorThisFrame = SetRadarAsExteriorThisFrame
local SetRadarAsInteriorThisFrame = SetRadarAsInteriorThisFrame

local function enableIslandMap()
    if not config.enableMap then return end

    local dummy = AddBlipForCoord(6146.53, -6107.55, 0.0)

    SetBlipDisplay(dummy, 4)
    SetBlipAlpha(dummy, 0)

    while true do
        SetRadarAsExteriorThisFrame()
        SetRadarAsInteriorThisFrame(`h4_fake_islandx`, 4700.0, -5150.0, 0.0, 0.0)
        Wait(0)
    end
end

SetInterval(function()
    local nearIsland = isNearIsland()

    if not playerState.onCayoPerico then
        if nearIsland then
            enableIslandFeatures(true)
        end
    elseif not nearIsland then
        enableIslandFeatures(false)
    end
end, 2000)

CreateThread(function()
    SetZoneEnabled(GetZoneFromNameId('PrLog'), false)
    requestIpls()
    setEntitySet()
    enableIslandMap()
end)