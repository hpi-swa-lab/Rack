displaying
text

	^ text ifNil: [ 'a Pile with ', self object size, ' objects' ] ifNotNil: [ text ]