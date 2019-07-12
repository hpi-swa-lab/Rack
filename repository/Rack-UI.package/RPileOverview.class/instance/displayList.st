as yet unclassified
displayList

	self pile object
		doWithIndex: [:each :index | | iconMorph rowHeight textMorph |
			rowHeight := self top - 15 + (index * 60).
			iconMorph := each worldIconMorph.
			textMorph := each worldIconText asText asTextMorph.
			
			self
				addMorph: iconMorph;
				addMorph: textMorph.
			textMorph position: self left + 80 @ rowHeight.
			iconMorph position: self left @ rowHeight]