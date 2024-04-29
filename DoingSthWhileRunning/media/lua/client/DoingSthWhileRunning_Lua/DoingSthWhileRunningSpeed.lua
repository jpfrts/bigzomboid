--Made by SportXAI
local function DoingSthWhileRunningSpeed(player)
	local perk = math.min(0.9 + player:getPerkLevel(Perks.Sprinting) / 20.0, 1.5)
	local count = math.min(perk * 2.5, 1.0)
	local speedScale = math.abs((count * perk)+0.1)
	if speedScale >= 1.2 then
		speedScale = 1.2
	end
	player:setVariable("DoingSthWhileRunning_speed", speedScale * GameTime.getAnimSpeedFix())
end
Events.OnPlayerUpdate.Add(DoingSthWhileRunningSpeed)