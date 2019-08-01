displaying
addActions

	| buttonGroup |
	buttonGroup := PHButtonGroup new
						add: listButton;
						add: resetButton;
						add: filterButton;
						add: sortButton;
						add: pinButton.
	self addMorph: buttonGroup.
	buttonGroup
		resizeToPreferred;
		position: (self topRight - (buttonGroup width + 5 @ -5))