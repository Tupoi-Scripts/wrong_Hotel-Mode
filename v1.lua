local Replica_storage = game.ReplicatedStorage

---====== Script Setup ======---
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
local cc1 = Instance.new("ColorCorrectionEffect")
cc1.Parent = game.Lighting
cc1.Name = "ScriptedCC1"
cc1.TintColor = Color3.fromRGB(243, 238, 255)
local cc2 = Instance.new("ColorCorrectionEffect")
cc2.Parent = game.Lighting
cc2.Name = "ScriptedCC2"
cc2.TintColor = Color3.fromRGB(243, 238, 255)
local cc3 = Instance.new("ColorCorrectionEffect")
cc3.Parent = game.Lighting
cc3.Name = "ScriptedCC3"
cc3.TintColor = Color3.fromRGB(243, 238, 255)
local cc4 = Instance.new("ColorCorrectionEffect")
cc4.Parent = game.Lighting
cc4.Name = "ScriptedCC4"
cc4.TintColor = Color3.fromRGB(243, 238, 255)

local sound = Replica_storage.Sounds
sound.BulbBreak.SoundId = "rbxassetid://2612674531"
sound.BulbZap.SoundId = "rbxassetid://4288784832"
sound.BulbCharge.SoundId = "rbxassetid://166047422"

if Replica_storage.GameData.LatestRoom.Value >= 1 then
  require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded!", true)
-- Game Start
if Replica_storage.GameData.LatestRoom.Changed:Wait() then
  print("Model")
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Tupoi's Wrong Hotel, Activated!", true)
wait(3)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Currently mode script is V1", true)
wait(7)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Good luck!", true)
  end
end

---====== Entities ======---

-- MultiMatcher Spawn Setup
coroutine.wrap(function()
  while true do
    wait(190)
    Replica_storage.GameData.LatestRoom.Changed:Wait()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/MultiMatcher.lua"))()
  end
  
end)
--

-- Always Watching spawn timer
coroutine.wrap(function()
  while true do
    wait(150)
    Replica_storage.GameData.LatestRoom.Changed:Wait()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
  end
  
end)
--

-- Duster spawn setup
coroutine.wrap(function()
  while true do
    wait(200)
    Replica_storage.GameData.LatestRoom.Changed:Wait()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/Duster.lua"))
  end
  
end)
--

-- The Devil's Lighting
--

-- Depth
--

---====== After Door 60 ======---
