layout
acceptDroppingMorph: aMorph event: anEvent

	aMorph class = RWorldIcon ifTrue: [
		self addItem: aMorph object.
		aMorph delete].
	
	self 
		updateIcon;
		updateText