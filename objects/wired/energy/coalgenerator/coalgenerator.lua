function init()
	--entity.setInteractive(true)
	
	local pos = entity.position()
	self.itemPickupArea = {
		{pos[1] - 1, pos[2] - 1},
		{pos[1] + 1, pos[2]}
	}
	self.dropPoint = {pos[1] + 5, pos[2] + 1}

	self.fuelCurrent = 0
	self.fuelMax = 1000
	self.fuelValues = {
		coalore = 100
	}
end

-- function ejectItem(item)
	-- if next(item.data) == nil then
		-- world.spawnItem(item.name, self.dropPoint, item.count)
	-- else
		-- world.spawnItem(item.name, self.dropPoint, item.count, item.data)
	-- end
-- end

function getFuelItems()
	local dropIds = world.itemDropQuery(self.itemPickupArea[1], self.itemPickupArea[2])
	for i, entityId in ipairs(dropIds) do
		local itemName = world.entityName(entityId)
		world.logInfo(itemName)
		if self.fuelValues[itemName] then
			local item = world.takeItemDrop(entityId)
			if item then
				if self.fuelValues[item.name] then
					while item.count > 0 and self.fuelCurrent < self.fuelMax - self.fuelValues[item.name]do
						self.fuelCurrent = self.fuelCurrent + self.fuelValues[item.name]
						item.count = item.count - 1
					end
				end
			
				-- if item.count > 0 then
					-- ejectItem(item)
				-- end
			end
		end
	end
end

function useFuel()
	if self.fuelCurrent > 0 then
		self.fuelCurrent = self.fuelCurrent - 1
	end
end

function update(dt)
	getFuelItems()
	useFuel()
	world.logInfo("Fuel level: " .. self.fuelCurrent)
	world.logInfo("---")
end

--[[
function onInteraction(args)
	world.logInfo("Test")
end

function uninit()

end
]]--