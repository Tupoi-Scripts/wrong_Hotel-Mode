-- Spawner

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

-- Sprint

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tupoi-Scripts/wrong_Hotel-Mode/refs/heads/main/invisSprint.lua"))()

-- Atmosphere

local fog = Instance.new("Atmosphere")
fog.Density = 0.656
fog.Color = Color3.fromRGB(130, 130, 188)
fog.Decay = Color3.fromRGB(48, 54, 91)
fog.Glare = 0.1
fog.Haze = 1.5

-- DOF

local dof = Instance.new("DepthOfFieldEffect")
dof.FarIntensity = 0.243
dof.FocusDistance = 14.64
dof.InFocusRadius = 12.62
dof.NearIntensity = 1

-- ColorCorrection

local cc = Instance.new("ColorCorrectionEffect")
cc.Contrast = 0.16
cc.TintColor = Color3.fromRGB(243, 238, 255)

game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "Mode has been Loaded.", Color = Color3.fromRGB( 0,255,0 ), Font = nothingactually, FontSize = Enum.FontSize.Size24 } )
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.caption("Loaded Tupoi's 'Wrong Hotel' mode!",true)
wait(1)
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.caption("v.0.1 Good Luck!",true)
wait(2)
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.caption("Also press Shift to run.",true)

wait(30)

local entity = spawner.Create({
	Entity = {
		Name = "Multi-Matcher",
		Asset = "https://github.com/Tupoi-Scripts/wrong_Hotel-Mode/blob/main/Entities/MultiMatcher.rbxm?raw=true",
		HeightOffset = 0
	},
	Lights = {
		Flicker = {
			Enabled = true,
			Duration = 1
		},
		Shatter = true,
		Repair = false
	},
	Earthquake = {
		Enabled = false
	},
	CameraShake = {
		Enabled = true,
		Range = 100,
		Values = {1.5, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
	},
	Movement = {
		Speed = 75,
		Delay = 3,
		Reversed = true
	},
	Rebounding = {
		Enabled = true,
		Type = "Ambush", -- "Blitz"
		Min = 1,
		Max = 2,
		Delay = 3
	},
	Damage = {
		Enabled = true,
		Range = 40,
		Amount = 125
	},
	Crucifixion = {
		Enabled = true,
		Range = 40,
		Resist = false,
		Break = true
	},
	Death = {
		Type = "Guiding", -- "Curious"
		Hints = {"Death", "Hints", "Go", "Here"},
		Cause = "MultiMatcher"
	}
})

---====== Debug entity ======---

entity:SetCallback("OnSpawned", function()
    print("Entity has spawned")
end)

entity:SetCallback("OnStartMoving", function()
    print("Entity has started moving")
end)

entity:SetCallback("OnEnterRoom", function(room, firstTime)
    if firstTime == true then
        print("Entity has entered room: ".. room.Name.. " for the first time")
    else
        print("Entity has entered room: ".. room.Name.. " again")
    end
end)

entity:SetCallback("OnLookAt", function(lineOfSight)
	if lineOfSight == true then
		print("Player is looking at entity")
	else
		print("Player view is obstructed by something")
	end
end)

entity:SetCallback("OnRebounding", function(startOfRebound)
    if startOfRebound == true then
        print("Entity has started rebounding")
	else
        print("Entity has finished rebounding")
	end
end)

entity:SetCallback("OnDespawning", function()
    print("Entity is despawning")
end)

entity:SetCallback("OnDespawned", function()
    print("Entity has despawned")
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
	if newHealth == 0 then
		print("Entity has killed the player")
	else
		print("Entity has damaged the player")
	end
end)

--[[

DEVELOPER NOTE:
By overwriting 'CrucifixionOverwrite' the default crucifixion callback will be replaced with your custom callback.

entity:SetCallback("CrucifixionOverwrite", function()
    print("Custom crucifixion callback")
end)

]]--

---====== Run entity ======---

entity:Run()
wait(15)

local entity = spawner.Create({
	Entity = {
		Name = "DepthMoving",
		Asset = "https://github.com/Tupoi-Scripts/wrong_Hotel-Mode/blob/main/Entities/MultiMatcher.rbxm?raw=true",
		HeightOffset = 0
	},
	Lights = {
		Flicker = {
			Enabled = true,
			Duration = 5
		},
		Shatter = true,
		Repair = false
	},
	Earthquake = {
		Enabled = false
	},
	CameraShake = {
		Enabled = true,
		Range = 100,
		Values = {1.5, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
	},
	Movement = {
		Speed = 75,
		Delay = 3,
		Reversed = true
	},
	Rebounding = {
		Enabled = true,
		Type = "Ambush", -- "Blitz"
		Min = 1,
		Max = 2,
		Delay = 3
	},
	Damage = {
		Enabled = true,
		Range = 40,
		Amount = 125
	},
	Crucifixion = {
		Enabled = true,
		Range = 40,
		Resist = false,
		Break = true
	},
	Death = {
		Type = "Guiding", -- "Curious"
		Hints = {"Death", "Hints", "Go", "Here"},
		Cause = ""
	}
})

---====== Debug entity ======---

entity:SetCallback("OnSpawned", function()
    print("Entity has spawned")
end)

entity:SetCallback("OnStartMoving", function()
    print("Entity has started moving")
end)

entity:SetCallback("OnEnterRoom", function(room, firstTime)
    if firstTime == true then
        print("Entity has entered room: ".. room.Name.. " for the first time")
    else
        print("Entity has entered room: ".. room.Name.. " again")
    end
end)

entity:SetCallback("OnLookAt", function(lineOfSight)
	if lineOfSight == true then
		print("Player is looking at entity")
	else
		print("Player view is obstructed by something")
	end
end)

entity:SetCallback("OnRebounding", function(startOfRebound)
    if startOfRebound == true then
        print("Entity has started rebounding")
	else
        print("Entity has finished rebounding")
	end
end)

entity:SetCallback("OnDespawning", function()
    print("Entity is despawning")
end)

entity:SetCallback("OnDespawned", function()
    print("Entity has despawned")
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
	if newHealth == 0 then
		print("Entity has killed the player")
	else
		print("Entity has damaged the player")
	end
end)

--[[

DEVELOPER NOTE:
By overwriting 'CrucifixionOverwrite' the default crucifixion callback will be replaced with your custom callback.

entity:SetCallback("CrucifixionOverwrite", function()
    print("Custom crucifixion callback")
end)

]]--

---====== Run entity ======---

entity:Run()
