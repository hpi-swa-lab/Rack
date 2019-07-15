displaying
displayListItem: anItem atIndex: aNumber

	| iconMorph rowHeight textMorph |
	anItem isVisible ifFalse: [^ self ].
	
	rowHeight := self top + self buttonBarHeight + ((aNumber - 1) * (self listItemHeight + (self listPadding))) + (self listPadding / 2).
	iconMorph := anItem domainObject worldIconMorph.
	textMorph := anItem domainObject worldIconText asText asTextMorph.
			
	self
		addMorph: iconMorph;
		addMorph: textMorph.
	textMorph position: self left + self textPadding @ rowHeight.
	iconMorph position: self left + self iconPadding @ rowHeight