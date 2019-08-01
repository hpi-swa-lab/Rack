initialization
initializeButtons

	pinButton := (PHButton icon: #iconThumb_tack)
		when: #clicked send: #togglePinned to: self.
		
	listButton := (PHButton icon: #iconTh)
		when: #clicked send: #toggleDisplay to: self.
		
	filterButton := (PHButton icon: #iconFilter)
		when: #clicked send: #openFilterDialog to: self.
		
	sortButton := (PHButton icon: #iconSort)
		when: #clicked send: #openSortDialog to: self.
		
	resetButton := (PHButton icon: #iconUndo)
		when: #clicked send: #reset to: self