as yet unclassified
newFor: anObject

	^ self new
		domainObject: anObject;
		isVisible: true;
		timeAdded: DateAndTime now