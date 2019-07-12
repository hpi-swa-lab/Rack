dropping/grabbing
startDragging: evt

	"| transferMorph |
	transferMorph := RTransferMorph withPassenger: self object from: self.
	transferMorph position: self position.
	evt hand grabMorph: transferMorph"
	originPosition := self center. "
	LineMorph from: self position to: evt hand position color: Color red width: 2; openInWorld."
	evt hand grabMorph: self
	