*Rack-UI
dragThroughOnDesktop: evt
	"Draw out a selection rectangle"
	| selection polyMorph |
	
	evt shiftPressed ifTrue: [ | postIt |
		postIt := RPostIt new openInWorld position: evt hand position.
		postIt extendByHand: evt hand.
		^ self].
	
	polyMorph := PolygonMorph fromHandFreehand: evt hand.
	polyMorph makeClosed.
	selection := RSelectionMorph newFromPolygon: polyMorph. "newBounds: (evt cursorPoint extent: 8@8)."
	self addMorph: selection.
	selection selectSubmorphsOf: self.
	selection addHalo.
	"^ selection extendByHand: evt hand"