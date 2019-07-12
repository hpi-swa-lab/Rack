as yet unclassified
makePile

	| pile |
	pile := RPile new.
	self target selectedItems do: [ :item |
		pile addItem: item object.
		item delete].
	pile
		position: self center;
		openInWorld.
	self delete