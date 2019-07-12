as yet unclassified
startTicking

	self startSteppingSelector: (self class angryBirdsEnabled
		ifFalse: [#tick]
		ifTrue: [#angryBirdsTick])