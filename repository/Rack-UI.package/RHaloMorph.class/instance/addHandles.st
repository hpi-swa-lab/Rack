private
addHandles

	super addHandles.
	
	self
		addHandleAt: self bottomCenter + (0 @ 20)
		color: Color eggplant
		icon: 'Halo-Collapse'
		on: #mouseDown
		send: #makePile
		to: self