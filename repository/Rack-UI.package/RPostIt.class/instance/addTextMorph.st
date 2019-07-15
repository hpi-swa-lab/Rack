as yet unclassified
addTextMorph
	
	textMorph ifNotNil: [
		textMorph fontName: #undefined size: self fontSize.
		self addMorph: (textMorph position: self position + 30 asPoint)]