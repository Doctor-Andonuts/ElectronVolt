function init()
	self.fuelCurrent = 0
	self.fuelMax = 10000

	self.fuelList = {
		coalore = {
			timeToCook = 20,
			energyPerSecond = 10
		}
	}

	self.processingFuel = false
	self.processingFuelName = ""
	self.timeToCook = 0
end


function update(dt)
	if not self.processingFuel then
		item = world.containerItemAt(entity.id(), 0)
		if item and self.fuelList[item.name] then
			world.containerTakeNumItemsAt(entity.id(), 0, 1) -- Grabs 1 of the item in the 0th slot
			self.processingFuel = true
			self.processingFuelName = item.name
			self.timeToCook = self.fuelList[item.name]["timeToCook"]
		end
	end

	if self.processingFuel then
		if self.timeToCook > 0 then
			self.timeToCook = self.timeToCook - dt
			self.fuelCurrent = self.fuelCurrent + (self.fuelList[self.processingFuelName]["energyPerSecond"] * dt)
		else
			self.processingFuel = false
			self.processingFuelName = ""
			self.timeToCook = 0		
		end
	end

	world.logInfo("processingFuelName: " .. self.processingFuelName)
	world.logInfo("timeToCook: " .. self.timeToCook)
	world.logInfo("fuelCurrent: " .. self.fuelCurrent)
	world.logInfo("fuelMax: " .. self.fuelMax)
	world.logInfo("---")
end

--[[
function onInteraction(args)
	world.logInfo("Test")
end

function uninit()

end
]]--