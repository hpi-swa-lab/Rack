event handling
mouseEnterDragging: anEvent

	anEvent hand hasSubmorphs and: [anEvent hand firstSubmorph isWorldIcon ifTrue: [
		self refreshWithColor: Color red]]