event handling
acceptDroppingMorph: aMorph event: anEvent

	aMorph class = RWorldIcon ifTrue: [ 
			RPile new
				addItem: self object;
				addItem: aMorph object;
				position: anEvent position;
				openInWorld.
			aMorph delete.
			self delete]