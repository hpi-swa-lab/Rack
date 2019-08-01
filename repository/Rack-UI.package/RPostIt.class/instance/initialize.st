initialization
initialize

	super initialize.
	
	textMorph := '...' asText asTextMorph.
	
	self
		object: HPostIt new;
		color: Color lightYellow;
		addTextMorph.
	self object text: ''