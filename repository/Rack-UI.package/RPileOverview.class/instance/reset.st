actions
reset

	self pile filterString: nil.
	self pile sortString: nil.
	self
		filterObjects;
		sortObjects;
		displayItems;
		yourself