as yet unclassified
filterObjects

	^ UIManager default
		edit: '[:item | item domainObject ]'
		label: 'Filer Objects'
		accept: [:value | self filterBy: value]