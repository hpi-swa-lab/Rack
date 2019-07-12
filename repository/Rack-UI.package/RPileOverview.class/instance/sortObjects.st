as yet unclassified
sortObjects

	^ UIManager default
		edit: '[:item | item ]'
		label: 'Sort Objects'
		accept: [:value | self sortBy: value]