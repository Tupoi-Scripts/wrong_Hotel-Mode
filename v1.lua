local storage = game.ReplicatedStorage

if storage.GameData.LatestRoom.Value >= 1 then
  firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Loaded!")
  
-- Game Start
  
storage.GameData.LatestRoom.Changed:Wait()
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Tupoi's Wrong Hotel, Activated!")
wait(3) 
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Currently mode script is V1")
wait(7) 
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Good luck 🍀")

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
c1c.Parent = game.Lighting
cc1.Name = "ScriptedCC"
cc1.TintColor = Color3.fromRGB(243, 238, 255)
local cc2 = Instance.new("ColorCorrectionEffect")
cc2.Parent = game.Lighting
cc2.Name = "ScriptedCC"
cc2.TintColor = Color3.fromRGB(243, 238, 255)
local cc3 = Instance.new("ColorCorrectionEffect")
cc3.Parent = game.Lighting
cc3.Name = "ScriptedCC"
cc.3TintColor = Color3.fromRGB(243, 238, 255)
local cc4 = Instance.new("ColorCorrectionEffect")
cc4.Parent = game.Lighting
cc4.Name = "ScriptedCC"
cc4.TintColor = Color3.fromRGB(243, 238, 255)

local sound = game.ReplicatedStorage.Sounds
sound.BulbBreak.SoundId = "rbxassetid://2612674531"
sound.BulbZap.SoundId = "rbxassetid://4288784832"
sound.BulbCharge.SoundId = "rbxassetid://166047422"

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/invisSprint.lua"))()

-- MultiMatcher Spawn Setup


-- Always Watching spawn timer
if storage.GameData.LatestRoom.Value >= 5 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
wait(50)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
wait(100)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
wait(50)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
wait(100)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
wait(100)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
wait(50)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
wait(100)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
wait(50)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
wait(50)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
wait(50)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/AWScript.lua"))()
