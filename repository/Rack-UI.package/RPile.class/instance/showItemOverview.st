as yet unclassified
showItemOverview

	| morph |
	self hide.
	morph := RPileOverview new
		extent: (self gridSize x * 100 + 20 @ (self gridSize y * 80 + 40));
		position: self position;
		pile: self;
		center: self center;
		addActions;
		displayItems;
		openInWorld.