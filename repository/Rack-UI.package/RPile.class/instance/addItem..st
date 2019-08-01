add/remove
addItem: anItem

	self object addUnlessPresent: (RPileObject newFor: anItem).
	self refresh