initialization
initializeButtons

	pinButton := (PHButton icon: #iconThumb_tack)
		when: #clicked send: #togglePinned to: self.
		
	listButton := (PHButton icon: #iconTh)
		when: #clicked send: #toggleDisplay to: self.
		
	filterButton := (PHButton icon: #iconFilter)
		when: #clicked send: #filterObjects to: self.
		
	sortButton := (PHButton icon: #iconSort)
		when: #clicked send: #sortObjects to: self