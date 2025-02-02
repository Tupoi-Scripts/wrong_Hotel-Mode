local AWModel = Instance.new("Model")
AWModel.Parent = workspace
AWModel.Name = "Always Watching"
local v = game.Players.LocalPlayer
local enableDamage = true
local no = false
local damage = Instance.new("Sound")
damage.SoundId = "rbxassetid://2104751986"
damage.PlaybackSpeed = 0.60
damage.Volume = 0.55
local DSE = Instance.new("DistortionSoundEffect")
DSE.Name = "DSE_AlwaysW"
DSE.Parent = damage
DSE.Level = 0.52
DSE.Priority = 0
local CSE = Instance.new("ChorusSoundEffect")
CSE.Name = "CSE_AlwaysW"
CSE.Parent = damage
CSE.Depth = 0.15
CSE.Mix = 0.5
CSE.Priority = 0
CSE.Rate = 0.5
 
local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local eyes=game:GetObjects("rbxassetid://100338630323953")[1]
 
if eyes then end
game.Workspace.CurrentRooms.ChildAdded:Connect(function()
    AWModel:Destroy()
    enableDamage = false
end)
local num=0

if currentLoadedRoom:FindFirstChild("Nodes") then
   num = math.floor(#currentLoadedRoom.Nodes:GetChildren()/2)
end

eyes.CFrame=(
	num==0 and currentLoadedRoom[currentLoadedRoom.Name] or currentLoadedRoom.Nodes[num]
).CFrame+Vector3.new(0,5,0)
 
eyes.Parent=AWModel
damage.Parent=AWModel
local mom = {damage, damage, damage}

if game.Players.LocalPlayer.Character.Humanoid.Health<=0 then
   no = true
end
 
local hum=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
while true and enableDamage do
if not AWModel then break end
	local _,found=workspace.CurrentCamera:WorldToScreenPoint(eyes.Position)
	if not found then
	if v.Character ~= nil and not v.Character:GetAttribute("Hiding") then
if workspace.CurrentRooms:FindFirstChild("51") or workspace:FindFirstChild("SeekMoving")  then
return
end

		hum.Health-=10
          if no == false then
		mom[math.random(1, #mom)]:Play()
          end
		if hum.Health<=0 then
		if no == false then
			game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Always Watching"
			no = true
		end
		end
	end
	end
	task.wait(1.8)
end

