local mouse = game.Players.LocalPlayer:GetMouse()
function Light()
    player = game.Players.LocalPlayer
    playerChar = player.Character
    playerLight = playerChar.Head:FindFirstChild("Light")
    if playerLight then
        playerLight:Destroy()
    else
        light = Instance.new("SurfaceLight",playerChar:FindFirstChild("Head"))
        light.Name = "Light"
        light.Range = 15 -- Change to distance ofthe Light.
        light.Brightness = 3 -- Change to how much.
        light.Shadows = true -- Change it to True/False.

		
		local play = Instance.new("Sound",playerChar:FindFirstChild("Head"))
		play.SoundId = "http://www.roblox.com/asset/?id=198914875" --Change the "198914875" to any sound ID you want.
		play:Play()
		
	end
end
mouse.KeyDown:connect(function(key)
key = key:lower()
if key == "f" then -- Change this to any Keys but I reccomand leaving it as [F] key.
    Light()
end
end)

-- Made by iKennyHuynh, Modded by Tupoi
