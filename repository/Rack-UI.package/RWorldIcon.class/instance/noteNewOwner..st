as yet unclassified
noteNewOwner: aMorph

	aMorph isHandMorph ifTrue: [
		isPickedUp := true.
		self class physicsEnabled ifTrue: [self startTicking]].

	aMorph == self world ifTrue: [
		isPickedUp := false]