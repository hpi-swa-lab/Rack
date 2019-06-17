instance creation
isModifierPressed
	self checkListening.
	isModifierPressed ifNil: [self isModifierPressed: False].
	^isModifierPressed.