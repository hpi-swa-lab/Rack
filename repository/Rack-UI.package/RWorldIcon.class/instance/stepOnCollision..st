physics
stepOnCollision: colliderBounds

	| colliderCenter side move |
	"self halt."
	"(self bounds intersects: colliderBounds) ifFalse: [^ self]."
	
	colliderCenter := colliderBounds center.
	side := colliderBounds sideNearestTo: self center.
	Transcript show: side; cr.
	move := ((self center - colliderCenter) normalized * 10).
	
	(side = #left) ifTrue: [self right: self right + move x].
	(side = #right) ifTrue: [self left: self left + move x].
	
	(side = #top) ifTrue: [self bottom: self bottom + move y].
	(side = #bottom) ifTrue: [self top: self top + move y].
	
	"self center: ((self center - colliderCenter = 0 asPoint)
		ifTrue: [self center]
		ifFalse: [self center + ((self center - colliderCenter) normalized * 5)])."
	
	self
		ensurePositionInScreen;
		stopStepping