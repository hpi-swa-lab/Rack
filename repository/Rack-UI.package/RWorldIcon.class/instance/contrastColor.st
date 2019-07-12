as yet unclassified
contrastColor

	^  (ActiveWorld colorAt: self center belowMorph: self) luminance < 0.5 ifTrue: [Color white] ifFalse: [Color black]