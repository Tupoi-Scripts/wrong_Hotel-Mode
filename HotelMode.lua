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
cc.Contrast = 0.16
cc.TintColor = Color3.fromRGB(243, 238, 255)

local sound = game.ReplicatedStorage.Sounds

sound.BulbBreak.SoundId = "rbxassetid://2612674531"
sound.BulbZap.SoundId = "rbxassetid://4288784832"
sound.BulbCharge.SoundId = "rbxassetid://166047422"

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded Tupoi's 'Wrong Hotel' mode!", true)
wait(4)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("v.0.1 Good Luck!", true)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/invisSprint.lua"))()

local storage = game.ReplicatedStorage
local gamestats = storage.GameStats.Total

-- Spawner

if gamestats.DoorsOpened.Value == 10 then