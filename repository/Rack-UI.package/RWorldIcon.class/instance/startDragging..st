dropping/grabbing
startDragging: evt
	evt hand grabMorph: (self class physicsEnabled
		ifTrue: [originPosition := self center. self]
		ifFalse: [ | transferMorph |
			transferMorph := RTransferMorph withPassenger: self object from: self.
			transferMorph position: self position.
			transferMorph]).

	