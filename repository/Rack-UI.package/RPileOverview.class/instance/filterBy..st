as yet unclassified
filterBy: aBlock

	| block |
	block := [(Compiler evaluate: aBlock)].
	self pile object select: [:each | (block value: each) not] thenDo: [:each | each isVisible: false].
	self pile object select: block thenDo: [:each | each isVisible: true].
	self displayItems