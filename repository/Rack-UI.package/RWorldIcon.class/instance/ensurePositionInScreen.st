physics
ensurePositionInScreen
		
	(self world bounds containsRect: self bounds) ifFalse: [ | x y |
		y := ((self top max: 18) min: (self world bounds bottom - self extent y)).
		x := ((self left max: 0) min: (self world bounds right - self extent x)).
		
		self position: x @ y.
		self refresh.
	]