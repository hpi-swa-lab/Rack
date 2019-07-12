as yet unclassified
newFromPolygon: aPolygonMorph

	^ self new
		bounds: aPolygonMorph fullBounds;
		polyMorph: aPolygonMorph;
		changed