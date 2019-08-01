physics
updateSpeedAndPosition

	lastPosition ifNotNil: [self speed: (self owner position - lastPosition)].
	lastPosition := self owner position.