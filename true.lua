local Players = game:GetService("Players")
local player = Players.LocalPlayer
local placeId = game.PlaceId

local Games = {
    -- legado da pedra
    [4520749081]   = {Name = "King Legacy", Loader = "https://raw.githubusercontent.com/mainloadergg/xyz/refs/heads/main/kl.lua"},
    [6381829480]   = {Name = "King Legacy", Loader = "https://raw.githubusercontent.com/mainloadergg/xyz/refs/heads/main/kl.lua"},
    [15759515082]  = {Name = "King Legacy", Loader = "https://raw.githubusercontent.com/mainloadergg/xyz/refs/heads/main/kl.lua"},
    
    -- brocha frutas
    [2753915549]   = {Name = "Blox Fruits", Loader = "https://raw.githubusercontent.com/mainloadergg/xyz/refs/heads/main/bf.lua"},
    [4442272183]   = {Name = "Blox Fruits", Loader = "https://raw.githubusercontent.com/mainloadergg/xyz/refs/heads/main/bf.lua"},
    [79091703265657] = {Name = "Blox Fruits", Loader = "https://raw.githubusercontent.com/mainloadergg/xyz/refs/heads/main/bf.lua"},
    [7449423635]   = {Name = "Blox Fruits", Loader = "https://raw.githubusercontent.com/mainloadergg/xyz/refs/heads/main/bf.lua"},
}

local gameData = Games[placeId]

if not gameData then
    if player then
        player:Kick("Wrong game.\nThis script only supports:\n— King Legacy\n— Blox Fruits")
    end
    return
end

local success, err = pcall(function()
    loadstring(game:HttpGet(gameData.Loader))()
end)

if not success then
   warn("idk ni")
    if player then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Load Error",
            Text = "Failed to load " .. gameData.Name .. " script. Try again.",
            Duration = 5
        })
    end
end
