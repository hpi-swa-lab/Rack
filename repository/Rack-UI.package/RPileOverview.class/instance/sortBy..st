actions
sortBy: aBlock

	| block |
	
	block := (Compiler evaluate: aBlock).
	self pile object sort: [:a :b | self safeCompare: a and: b with: block].
	
	self displayItems