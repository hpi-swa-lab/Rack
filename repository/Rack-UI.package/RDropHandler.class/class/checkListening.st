drophandling
checkListening
	"lets hope you will only be registered once"
	self shouldBeListening ifTrue: [ActiveHand addKeyboardListener: self] ifFalse: [ActiveHand removeKeyboardListener: self].