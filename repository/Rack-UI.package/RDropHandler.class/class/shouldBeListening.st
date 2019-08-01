accessing
shouldBeListening
	shouldBeListening ifNil: [self shouldBeListening: true].
	^ shouldBeListening