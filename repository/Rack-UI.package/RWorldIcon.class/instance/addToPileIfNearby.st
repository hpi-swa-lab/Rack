physics
addToPileIfNearby

	self world ifNotNil: [self world submorphsDo: [ :s | s isPile ifTrue: [
		((self bounds intersects: s bounds) and: [s color isTransparent not]) ifTrue: [
			self stopStepping. 
			s addItem: self object.
			self delete.
			^ self].
		]
	]]