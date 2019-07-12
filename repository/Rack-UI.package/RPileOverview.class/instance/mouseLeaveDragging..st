event handling
mouseLeaveDragging: anEvent

	self flag: #todo. "remove"

	(anEvent hand hasSubmorphs and: [anEvent hand submorphs first class = RWorldIcon]) ifTrue: [
		self pile object remove: (anEvent hand submorphs first) ifAbsent: [].
		self pile object size < 1 ifTrue: [self pile delete]].
	
	self mouseLeave: anEvent.
	self displayItems