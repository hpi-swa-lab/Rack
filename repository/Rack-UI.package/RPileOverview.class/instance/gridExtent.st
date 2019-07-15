displaying
gridExtent

	^ self gridPadding asPoint * 2 +
		(self pile gridSize * (self worldIconSize + self gridPadding)) + 
		(0 @  self buttonBarHeight)