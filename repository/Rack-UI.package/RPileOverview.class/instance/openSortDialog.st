actions
openSortDialog

	^ UIManager default
		edit: self getSortString
		label: 'Sort Objects'
		accept: [:value | self pile sortString: value. self sortObjects]