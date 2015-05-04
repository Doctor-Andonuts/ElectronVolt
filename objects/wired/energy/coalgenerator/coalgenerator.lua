function init()
	--entity.setInteractive(true)
	
	local pos = entity.position()
	self.itemPickupArea = {
		{pos[1] - 1, pos[2] - 1},
		{pos[1] + 1, pos[2]}
	}
end

function getFuelItems()
	local dropIds = world.itemDropQuery(self.itemPickupArea[1], self.itemPickupArea[2])
	for i, entityId in ipairs(dropIds) do
		local itemName = world.entityName(entityId)
		--local item = world.takeItemDrop(entityId)
		world.logInfo(itemName)
	end
end

function update(dt)
	getFuelItems()
end

--[[
function onInteraction(args)
	world.logInfo("Test")
end

function uninit()

end
]]--