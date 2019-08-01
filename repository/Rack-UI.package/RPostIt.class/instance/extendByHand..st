displaying
extendByHand: aHand
	"Assumes selection has just been created and added to some pasteUp or world"
	| startPoint handle |

	startPoint := self position.
	handle := NewHandleMorph new followHand: aHand
		forEachPointDo: [:newPoint || localPt |
				localPt := (self transformFrom: self world) globalPointToLocal: newPoint.
				self bounds: (startPoint rect: localPt) ]
		lastPointDo: [:center | aHand newKeyboardFocus: self textMorph ].

	aHand attachMorph: handle