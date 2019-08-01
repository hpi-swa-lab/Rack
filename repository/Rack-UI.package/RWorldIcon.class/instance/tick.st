physics
tick
	
	isPickedUp ifTrue: [
		self updateSpeedAndPosition.
		^ self.
	].
	
	self position: self position + self speed.
	self speed: self decayedSpeed.
	self ensurePositionInScreen.
	self checkForCollisions.
	
	self speed < 1 asPoint ifTrue: [
		^ self
			stopStepping;
			addToPileIfNearby;
			yourself].