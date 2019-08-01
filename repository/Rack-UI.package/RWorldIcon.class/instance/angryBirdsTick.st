physics
angryBirdsTick

	isPickedUp ifTrue: [
		line ifNotNil: #delete.
		line := (LineMorph from: originPosition to: self center color: Color green width: 2) openInWorld.
		self speed: (originPosition - self position) * 2.
		^ self.
	].
	
	line ifNotNil: #delete.
	self position: self position + self speed.
	self speed: self decayedSpeed.
	
	self speed < 1 asPoint ifTrue: [
		self world submorphsDo: [ :s | s isPile ifTrue: [
				(self bounds intersects: s bounds) ifTrue: [
					 self stopStepping. 
					s addItem: self object. self delete. ^ self].
				]].
		self stopStepping].
	
	(self world bounds containsRect: self bounds) ifFalse: [ 
		self position: self ensurePositionInScreen.
		self initializeIconAndText.
		self stopStepping]