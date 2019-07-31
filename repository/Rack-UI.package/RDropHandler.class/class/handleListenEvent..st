drophandling
handleListenEvent: aKeyboardEvent
	isModifierPressed := (aKeyboardEvent isKeyDown and: [aKeyboardEvent anyModifierKeyPressed]).