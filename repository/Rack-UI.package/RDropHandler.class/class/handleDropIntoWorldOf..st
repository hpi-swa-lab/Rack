instance creation
handleDropIntoWorldOf: anObject
	| manager choiceStrings values|
	(self isModifierPressed) ifFalse: [^anObject worldIcon].
	manager := UIManager default.
	choiceStrings := {Text fromString: 'Hello' . anObject . 'Inspector for ' , anObject class . 'Cancel Dropping'}.
	values := {[(Text fromString: 'Hello') worldIcon] . [anObject worldIcon] . [(Inspector openOn: anObject)] . [nil]}.
	^(manager chooseFrom: choiceStrings values: values) value.