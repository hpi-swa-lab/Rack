displaying
showItemOverview

	| morph |
	self hide.
	morph := RPileOverview new
		pile: self;
		center: self center;
		displayItems;
		filterObjects;
		sortObjects;
		openInWorld