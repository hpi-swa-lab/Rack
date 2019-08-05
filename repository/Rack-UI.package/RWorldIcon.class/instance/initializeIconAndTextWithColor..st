initialization
initializeIconAndTextWithColor: aColor

	| iconMorph textMorph text |
	iconMorph := self object worldIconMorphIn: self owner.
	(iconMorph isImageMorph and: [self object shouldIconPreserveColors not]) ifTrue: [
		iconMorph image: (iconMorph image collectColors: [:c |
			aColor alpha: c alpha])].
	self addMorph: iconMorph.
	iconMorph position: self position.
	text := self text.
	textMorph := (text first: (30 min: text size)) asText asTextMorph.
	self addMorph: textMorph.
	textMorph position: self position + (((iconMorph width / 2) - (textMorph width / 2))@iconMorph height).
	textMorph textColor: aColor.
	self extent: iconMorph extent