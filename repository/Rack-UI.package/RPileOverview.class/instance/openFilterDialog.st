actions
openFilterDialog

	^ UIManager default
		edit: self getFilterString
		label: 'Filer Objects'
		accept: [:value | self pile filterString: value. self filterObjects]