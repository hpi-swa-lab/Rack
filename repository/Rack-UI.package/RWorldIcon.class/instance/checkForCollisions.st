physics
checkForCollisions

	self world submorphsDo: [ :s | 
		((s isWorldIcon) and: (s  ~= self) and: [self intersects: s bounds]) ifTrue: [
			s
				startStepping: #stepOnCollision:
				at: Time millisecondClockValue
				arguments: {self bounds}
				stepTime: s stepTime]]