updating
refreshWithColor: aColor

	| currentExtent |
	currentExtent := self extent.
	super refreshWithColor: aColor.
	self extent: currentExtent.
	self addTextMorph