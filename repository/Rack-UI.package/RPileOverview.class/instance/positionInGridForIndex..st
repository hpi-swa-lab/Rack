displaying
positionInGridForIndex: index

	| x y |
	x := (((index - 1) \\ self pile gridSize x)).
	y := (((index - 1) / self pile gridSize x) floor).
	
	^ (self gridPadding * 3 / 2) asPoint +
		(0 @ self buttonBarHeight) +
		((x @ y) * (self worldIconSize + self gridPadding))