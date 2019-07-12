as yet unclassified
tick
	
	isPickedUp ifTrue: [
		self updateSpeedAndPosition.
		^ self.
	].
	
	self position: self position + self speed.
	self speed: self decayedSpeed.
	
	self speed < 1 asPoint ifTrue: [
		self
			addToPileIfNearby;
			stopStepping ].
	
	(self world bounds containsRect: self bounds) ifFalse: [ 
		self position: self ensurePositionInScreen.
		self refresh.
	]