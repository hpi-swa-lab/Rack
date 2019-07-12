as yet unclassified
addToPileIfNearby

	self world submorphsDo: [ :s | s isPile ifTrue: [
		(self bounds intersects: s bounds) ifTrue: [
			self stopStepping. 
			s addItem: self object.
			self delete.
			^ self].
		]
	]