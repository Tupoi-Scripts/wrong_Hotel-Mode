local fog = Instance.new("Atmosphere")
fog.Parent = game.Lighting
fog.Name = "ScriptedFog"
fog.Density = 0.656
fog.Color = Color3.fromRGB(130, 130, 188)
fog.Decay = Color3.fromRGB(48, 54, 91)
fog.Glare = 0.1
fog.Haze = 1.5
local dof = Instance.new("DepthOfFieldEffect")
dof.Parent = game.Lighting
dof.Name = "ScriptedDof"
dof.FarIntensity = 0.243
dof.FocusDistance = 14.64
dof.InFocusRadius = 12.62
dof.NearIntensity = 1
local cc = Instance.new("ColorCorrectionEffect")
cc.Parent = game.Lighting
cc.Name = "ScriptedCC"
cc.TintColor = Color3.fromRGB(243, 238, 255)

local sound = game.ReplicatedStorage.Sounds
sound.BulbBreak.SoundId = "rbxassetid://2612674531"
sound.BulbZap.SoundId = "rbxassetid://4288784832"
sound.BulbCharge.SoundId = "rbxassetid://166047422"

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/invisSprint.lua"))()

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded Tupoi's 'Wrong Hotel' mode!", true)
wait(4)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("v.0.1 Good Luck!", true)
wait(4)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("LOSER IF YOUR EXECUTOR DONT HAVE 'require' LMAO-", true)
wait(3)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Xeno executor...", true)

local storage = game.ReplicatedStorage
local gamestats = storage.GameStats.Total

-- MultiMatcher Spawn Setup

if gamestats.DoorsOpened.Value == 10 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/MultiMatcher.lua"))()
end

if gamestats.DoorsOpened.Value == 17 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/MultiMatcher.lua"))()
end

if gamestats.DoorsOpened.Value == 19 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/MultiMatcher.lua"))()
end

if gamestats.DoorsOpened.Value == 25 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/MultiMatcher.lua"))()
end

if gamestats.DoorsOpened.Value == 36 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/MultiMatcher.lua"))()
end

if gamestats.DoorsOpened.Value == 40 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/MultiMatcher.lua"))()
end

if gamestats.DoorsOpened.Value == 48 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/MultiMatcher.lua"))()
end

if gamestats.DoorsOpened.Value == 53 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/MultiMatcher.lua"))()
end

if gamestats.DoorsOpened.Value == 60 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/MultiMatcher.lua"))()
end

if gamestats.DoorsOpened.Value == 68 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/MultiMatcher.lua"))()
end
