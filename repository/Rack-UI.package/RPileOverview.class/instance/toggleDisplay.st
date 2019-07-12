as yet unclassified
toggleDisplay

	self displayMode == #grid
		ifTrue: [self displayMode: #list. listButton iconName: #iconList]
		ifFalse: [self displayMode: #grid. listButton iconName: #iconTh].
	self displayItems