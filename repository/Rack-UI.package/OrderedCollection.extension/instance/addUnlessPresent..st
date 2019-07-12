*Rack-UI
addUnlessPresent: newObject

	^(self includes: newObject) ifFalse: [self add: newObject]