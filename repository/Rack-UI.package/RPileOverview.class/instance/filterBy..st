actions
filterBy: aBlockString

	| block safeBlock |
	block := aBlockString ifNil: [[:each | true]] ifNotNil: [Compiler evaluate: aBlockString].
	safeBlock :=  [:each| [block value: each] on: Error do: [false]].
	self pile object do: [:each | each isVisible: (safeBlock value: each)].
	self displayItems