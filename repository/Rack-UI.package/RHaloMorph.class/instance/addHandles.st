as yet unclassified
addHandles

	super addHandles.
	
	self
		addHandleAt: self bottomCenter + (0 @ 20)
		color: Color eggplant
		on: #mouseDown
		send: #makePile
		to: self