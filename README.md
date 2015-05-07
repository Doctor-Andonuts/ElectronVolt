====== ElectronVolt ======

===== Basic Usage =====

Add InboundNode for turning the generator on and off
Move the inventory slot over to the left so text can be added
Add text to the interface - I don't think I can do this
	Current Energy Level / Max Energy Level
	How long the current piece of coal it is proccessing will take
	Energy Creation rate
	Energy Consumption rate
	If the item is not able to be consumed, and a list of items that work
Add progress bar to the interface to show current energy level
Add OutboundNodes for providing power to something else (1, 2, 3?)
	It needs to check what the device is on the other end and if it is able to use power and how much power it uses


Coalore take 20 seconds to convert to energy per 1 coalore
Coalore provides 10 energy per second of processing (making it provide 200 fuel total)
The generator can hold 10,000 energy total (50 coal and 16m40s to fill it up from empty)

