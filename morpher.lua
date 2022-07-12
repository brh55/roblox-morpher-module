local Morpher = {}

-- morpher.select --
-- Used with a Proximity Prompt Trigger to Change the Character to the Morphing Model --
function Morpher.select(player, parent)
	local oldCharacter = player.Character
	local morphModel = parent:FindFirstChildWhichIsA("Model")
	local newCharacter = morphModel:Clone()
	
	newCharacter.HumanoidRootPart.Anchored = false
  -- Sets location to current location --
	newCharacter:SetPrimaryPartCFrame(oldCharacter.PrimaryPart.CFrame)
  newCharacter.Parent = workspace
  
  -- Optional, but we add this attribute to be used elsewhere --
	player:SetAttribute("hasMorphed", true);
	player.Character = newCharacter
end

-- morpher.initiate --
-- This will bind the selection method to a proximity prompt --
function Morpher.initiate(parent)
	local prompt = parent.Prompt.ProximityPrompt
	prompt.Triggered:Connect(function(player)
		Morpher.select(player, parent)
	end)
end

return Morpher
