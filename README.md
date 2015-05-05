====== ElectronVolt ======

===== Basic Usage =====

I can not open custom interfaces and custom buttons with hooks so I have to do this another way. The way starfoundry did it is good enough for now.

Interacting with the generator causes it to turn on or off (it doesnt matter if there is energy in the internal battery or if it is proccessing coalore currently, it will pause everything until turned back on and resume like normal.

Dropping coalore infront of the generator causes the generator to pickup the coal and use it. When picking up the coalore, it will begin adding energy to the internal battery at a specified rate and the coal will be consumed.


Questions
	Can you drop a large stack of coalore that it will proccess?
	What happens if the generator is 99% full and you drop some coalore, will it take them and waste the excess or will it not take it until there is room for all of the coal energy in the buffer.
	
	There could be energy leaving the buffer while coal is being converted into energy in the buffer.
	
Can I make an interface and can LUA read the items in the container, if so, I use that and the player can add a stack of ore to a 1 slot container and I just take a coalore out as needed.  I might even be able to put a progress bar in the interface to show the cooking?


===== TEST =====
I may want to install minecraft and a mod with admin mode to test how that stuff works

I still need to figure out what can go over a wire