initialization
initializeIconAndTextWithColor: aColor

	| currentExtent |
	currentExtent := self extent.
	super initializeIconAndTextWithColor: aColor.
	self extent: currentExtent.
	self addTextMorph