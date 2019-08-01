actions
getSortString

	self pile sortString ifNil: [^ '[:item | item ]'].
	^ self pile sortString