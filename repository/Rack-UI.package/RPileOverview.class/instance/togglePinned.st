as yet unclassified
togglePinned

	| buttonColor |
	self isPinned: self isPinned not.
	buttonColor := self isPinned ifTrue: [Color red] ifFalse: [Color black].
		
	pinButton addApplicationStyles: (PHStyle forAny color: buttonColor; yourself)