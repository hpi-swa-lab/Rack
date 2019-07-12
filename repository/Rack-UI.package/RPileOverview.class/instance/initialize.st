initialization
initialize

	super initialize.
	self
		isPinned: false;
		displayMode: #grid;
		color: (Color gray alpha: 0.7);
		initializeButtons