initialization
initializeIconAndTextWithColor: aColor

	| iconMorph textMorph |
	iconMorph := self object worldIconMorph.
	iconMorph isImageMorph ifTrue: [
		iconMorph image: (iconMorph image collectColors: [:c |
			aColor alpha: c alpha])].
	self addMorph: iconMorph.
	iconMorph position: self position.
	textMorph := (self text first: (30 min: self text size)) asText asTextMorph.
	self addMorph: textMorph.
	textMorph position: self position + (((iconMorph width / 2) - (textMorph width / 2))@iconMorph height).
	textMorph textColor: aColor.