-- Gui to Lua


-- Version: 3.2 Modded by Tupoi. Removes the this annoying gui



-- Instances:


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
