local level3 = {
	"karporton"
}

local level2 = {
	"quiteanrng"
}

local level1 = {
	"Sunthe1st",
	"batanglanao56",
	"luu_monkey",
	"arpaul111"
}
game.Players.PlayerAdded:Connect(function(plr)

	local levelHidden = Instance.new("Folder")
	levelHidden.Name = "Hiddens"
	levelHidden.Parent = plr

	local levelVal = Instance.new("IntValue")
	levelVal.Name = "AdminLevel"
	levelVal.Parent = levelHidden
	levelVal.Value = 0

	if table.find(level1, plr.Name) then
		levelVal.Value = 1
	elseif table.find(level2, plr.Name) then
		levelVal.Value = 2
	elseif plr.Name == "Arsenka09108" then
		levelVal.Value = 99
	end
	
end)