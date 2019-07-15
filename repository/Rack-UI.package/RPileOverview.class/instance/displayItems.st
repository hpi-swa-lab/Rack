displaying
displayItems

	self removeAllMorphs.
	self displayMode == #grid ifTrue: [self displayGrid].
	self displayMode == #list ifTrue: [self displayList].
	self addActions