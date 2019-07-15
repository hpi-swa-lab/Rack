displaying
listExtent

	^ self listPadding asPoint +
		((0 @ self listItemHeight+ self listPadding) * self pile object size) +
		(self listMinWidth @ self buttonBarHeight)