*Rack-UI
containsViewableImage
	| type |
	type := MIMEDocument contentType: (MIMEDocument guessTypeFromName: self name)  content: ''.
	^type containsViewableImage.