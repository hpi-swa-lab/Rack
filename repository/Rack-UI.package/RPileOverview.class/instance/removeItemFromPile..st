add/remove
removeItemFromPile: aPileObject

	self pile object do: [:el | (aPileObject = el domainObject) ifTrue: [ self pile object remove: el ]].
	self pile refresh.
	self pile object size < 1 ifTrue: [self pile delete. self isPinned: false]