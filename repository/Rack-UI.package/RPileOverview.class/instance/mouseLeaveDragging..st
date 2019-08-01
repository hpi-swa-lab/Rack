event handling
mouseLeaveDragging: anEvent

	(anEvent shiftPressed not
		and: [anEvent hand hasSubmorphs
		and: [anEvent hand submorphs first isWorldIcon]]) ifTrue: [ 
			self removeItemFromPile: anEvent hand submorphs first object].
	
	self mouseLeave: anEvent.
	self displayItems