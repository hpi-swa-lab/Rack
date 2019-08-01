physics
startTicking

	self startSteppingSelector: (self class angryBirdsEnabled
		ifFalse: [#tick]
		ifTrue: [#angryBirdsTick])