actions
filterObjects

	self filterBy: self pile filterString.
	self pile filterString ifNil: [
		filterButton addApplicationStyles: (PHStyle forAny color: Color black; yourself).
		^ self].
	filterButton addApplicationStyles: (PHStyle forAny color: Color paleGreen; yourself)