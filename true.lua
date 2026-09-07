local Players = game:GetService("Players")
local player = Players.LocalPlayer
local placeId = game.PlaceId

local Games = {
    [4520749081] = {Name = "King Legacy", Loader = "https://raw.githubusercontent.com/mainloadergg/GenesisHub/refs/heads/main/KingLegacy.lua"},
    [6381829480] = {Name = "King Legacy", Loader = "https://raw.githubusercontent.com/mainloadergg/GenesisHub/refs/heads/main/KingLegacy.lua"},
    [15759515082] = {Name = "King Legacy", Loader = "https://raw.githubusercontent.com/mainloadergg/GenesisHub/refs/heads/main/KingLegacy.lua"},
    [93829858358973] = {Name = "+1 Muscle To Break Through Walls", Loader = "https://raw.githubusercontent.com/mainloadergg/GenesisHub/refs/heads/main/%2B1MuscleToBreakThroughWalls.lua"},
    [10260193230] = {Name = "Meme Sea", Loader = "https://raw.githubusercontent.com/mainloadergg/GenesisHub/refs/heads/main/MemeSea.lua"},
}

local gameData = Games[placeId]

if not gameData then
    if player then
        player:Kick("wrong game")
    end
    return
end

local success, err = pcall(function()
    loadstring(game:HttpGet(gameData.Loader))()
end)
