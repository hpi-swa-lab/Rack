as yet unclassified
sortBy: aBlock

	| block |
	
	block := (Compiler evaluate: aBlock).
	self pile object sort: [:a :b | (block value: a) > (block value: b)].
	
	self displayItems