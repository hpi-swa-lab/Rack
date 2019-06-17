instance creation
handleListenEvent: aKeyboardEvent
	isModifierPressed := (aKeyboardEvent isKeyDown and: [aKeyboardEvent anyModifierKeyPressed]).