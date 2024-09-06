local ds = game:GetService("DataStoreService")
local data = ds:GetDatastore("put any datastore here, no spaces")

game:GetService("Players").PlayerAdded:Connect(function(plr)
	local leaderstats = Instance.new("Folder", plr) --creates a folder leaderstats and parents it to plr
	leaderstats.Name = "leaderstats"

	local currency = Instance.new("NumberValue", leaderstats)
	currency.Name = "Currency"
	currency.Value = 0

	local DataLoad = Data:GetAsync(tostring(plr.UserId))
	local Response, Success = pcall(function()
		return DataLoad
	end)

	if success then
		currency.Value = DataLoad[1]
	end
end)

game.Players.PlayerRemoving:Connect(function(plr)
	Data:SetAsync(tostring(player.UserId),{
		plr.leaderstats.Currency.Value
	})
end)
