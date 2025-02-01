
local runService = game:GetService("RunService")



local character = game.Players.LocalPlayer.Character


local humanoid = character:WaitForChild("Humanoid")



local StaminaBar = Instance.new("ScreenGui")


local Border = Instance.new("Frame")


local Bar = Instance.new("Frame")


local SideBar = Instance.new("Frame")


local Bar_2 = Instance.new("Frame")



--Properties:



StaminaBar.Name = "StaminaBar"


StaminaBar.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")


StaminaBar.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



Border.Name = "Border"


Border.Parent = StaminaBar


Border.AnchorPoint = Vector2.new(0, 1)


Border.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


Border.BorderColor3 = Color3.fromRGB(0, 0, 0)


Border.BorderSizePixel = 4


Border.Position = UDim2.new(0.25, 0, 0.85, 0)


Border.Size = UDim2.new(0.6, 0, 0.0263093561, 0)



				--if cam.FieldOfView > 78 and script.Parent.Dissapear.Value ~= 10 then


				--	Fov(70)


				--	end








				if Started~=false then


					Started=false


					SmallFOV:Play()


					script.Parent.Dissapear.Value=10	


				end



				wait()


			end



		end


	end




	--------------------------------------------------------------------------------------------------------------

	char.Changed:Connect(function()
		if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed2 and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= 10 then
			DEF=game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
			if sprinting == true then
				WalkSpeed2=DEF+5
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = DEF
			end
			
		end
	end)

	function updateBobbleEffect()


		local currentTime = tick()


		if  Started == true then


			if humanoid.MoveDirection.Magnitude > 0  then -- we are walking


				local bobbleY = math.abs(math.sin(currentTime * 10)) * .35


				local bobbleX = math.abs(math.sin(currentTime * 10)) * .05



				local bobble = Vector3.new(bobbleX, bobbleY, 0)



				humanoid.CameraOffset = humanoid.CameraOffset:lerp(bobble, .75)





			else -- we are not walking


				humanoid.CameraOffset =humanoid.CameraOffset * 0


			end


		end


	end



	runService.RenderStepped:Connect(updateBobbleEffect)






	local CAS = game:GetService("ContextActionService")



	CAS:BindAction("Sprint", sprint, true, bind1, bind2) -- Binds the keybinds to the sprint function and creates a mobile button for it


	CAS:SetPosition("Sprint", UDim2.new(0.7,0,0,0)) -- Changes the position of the mobile button within the context frame, to read more about how UDim2 positions work, go to https://developer.roblox.com/en-us/api-reference/datatype/UDim2


	CAS:SetTitle("Sprint", "Shift") -- Sets the text on the mobile button, replace Ctrl with any text you desire


end


coroutine.wrap(QCHWWK_fake_script)()


function CJZEISY_fake_script() -- SideBar.LocalScript 


	local script = Instance.new('LocalScript', SideBar)



	script.Parent.Visible = false


end


coroutine.wrap(CJZEISY_fake_script)()

local storage = game.ReplicatedStorage
local gamestats = storage.GameStats.Total

-- Spawner

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

-- Atmosphere

local fog = Instance.new("Atmosphere")
fog.Parent = game.Lighting
fog.Name = "ScriptedFog"
fog.Density = 0.656
fog.Color = Color3.fromRGB(130, 130, 188)
fog.Decay = Color3.fromRGB(48, 54, 91)
fog.Glare = 0.1
fog.Haze = 1.5

-- DOF

local dof = Instance.new("DepthOfFieldEffect")
dof.Parent = game.Lighting
dof.Name = "ScriptedDof"
dof.FarIntensity = 0.243
dof.FocusDistance = 14.64
dof.InFocusRadius = 12.62
dof.NearIntensity = 1

-- ColorCorrection

local cc = Instance.new("ColorCorrectionEffect")
cc.Parent = game.Lighting
cc.Name = "ScriptedCC"
cc.Contrast = 0.16
cc.TintColor = Color3.fromRGB(243, 238, 255)

game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "Mode has been Loaded.", Color = Color3.fromRGB( 0,255,0 ), Font = nothingactually, FontSize = Enum.FontSize.Size24 } )
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded Tupoi's 'Wrong Hotel' mode!", true)
wait(1)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("v.0.1 Good Luck!", true)
wait(2)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Also press Shift to run.", true)

if gamestats.DoorsOpened.Value == 10 or 14 then
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
		Type = "Curious", -- "Curious"
		Hints = {"Oh, hi, don't ask me why I'm here.", "As I understand it, you died from the one we didn't meet.", "Let's call it... MultiMatcher", "I'm sorry, but I do not know how to escape from it."},
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
    local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

    achievementGiver({
    Title = "Lucky, lucky.. But I'll still be back.",
    Desc = "Don't think it's over.",
    Reason = "Encounter Multi-Matcher",
    Image = "rbxassetid://0"
})
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
end)

if gamestats.DoorsOpened.Value == 15 or 21 or 30 then
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
		Type = "Curious", -- "Curious"
		Hints = {"Oh, hi, don't ask me why I'm here.", "As I understand it, you died from the one we didn't meet.", "Let's call it... MultiMatcher", "I'm sorry, but I do not know how to escape from it."},
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
    achievementGiver({
    Title = "Lucky, lucky.. But I'll still be back.",
    Desc = "Don't think it's over.",
    Reason = "Encounter Multi-Matcher",
    Image = "rbxassetid://0"
})
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
end)
