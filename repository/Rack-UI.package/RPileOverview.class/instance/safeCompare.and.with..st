actions
safeCompare: a and: b with: aBlock
	" if a or b don't understand the sorting term, put them last "
	
	| valA valB |
	valA := [aBlock value: a] on: Error do: [^ false].
	valB := [aBlock value: b] on: Error do: [^ true].
	^ valA < valB