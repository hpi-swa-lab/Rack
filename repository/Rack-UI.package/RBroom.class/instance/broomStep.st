stepping and presenter
broomStep

	self world submorphsDo: [ :s | 
		((s isWorldIcon) and: [self intersects: (s bounds expandBy: 20)]) ifTrue: [
			s
				startStepping: #stepOnCollision:
				at: Time millisecondClockValue
				arguments: {self bounds}
				stepTime: s stepTime]]