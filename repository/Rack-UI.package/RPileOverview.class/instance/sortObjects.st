actions
sortObjects

	self pile sortString ifNil: [
		sortButton addApplicationStyles: (PHStyle forAny color: Color black; yourself).
		^ self].
	self sortBy: self pile sortString.
	sortButton addApplicationStyles: (PHStyle forAny color: Color paleGreen; yourself)