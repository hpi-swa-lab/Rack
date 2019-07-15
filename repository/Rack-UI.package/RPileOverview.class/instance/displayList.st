displaying
displayList
	
	self extent: self listExtent.

	self pile object doWithIndex: [:each :index | 
		self displayListItem: each atIndex: index]