as yet unclassified
displayGrid

	self extent: self gridExtent.
	
	self pile object doWithIndex: [:each :index | 
		each isVisible ifTrue: [
			self addMorph: ((RWorldIcon newFor: each domainObject)
				position: (self position + (self positionInGridForIndex: index)))
		]
	]