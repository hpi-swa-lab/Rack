*Rack-UI
dragThroughOnDesktop: evt
	"Draw out a selection rectangle"
	| selection polyMorph |
	polyMorph := PolygonMorph fromHandFreehand: evt hand.
	polyMorph makeClosed.
	selection := RSelectionMorph newFromPolygon: polyMorph. "newBounds: (evt cursorPoint extent: 8@8)."
	self addMorph: selection.
	selection selectSubmorphsOf: self.
	selection addHalo.
	"^ selection extendByHand: evt hand"