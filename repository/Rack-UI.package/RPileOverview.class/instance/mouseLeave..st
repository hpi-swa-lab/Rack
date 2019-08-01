event handling
mouseLeave: evt

	self isPinned ifFalse: [
		self pile show.
		self deleteOnlySelf]