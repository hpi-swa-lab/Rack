actions
getFilterString

	self pile filterString ifNil: [^ '[:item | item domainObject ]'].
	^ self pile filterString