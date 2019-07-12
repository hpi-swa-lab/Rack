as yet unclassified
ensurePositionInScreen

	| x y |
	y := ((self top max: 18) min: (self world bounds bottom - self extent y)).
	x := ((self left max: 0) min: (self world bounds right - self extent x)).
		
	^ x @ y