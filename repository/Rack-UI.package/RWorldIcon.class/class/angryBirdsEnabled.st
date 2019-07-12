instance creation
angryBirdsEnabled
	<preference: 'Select type of physics for World Icons'
		category: 'RWorldIcon'
		description: 'Select if angry birds like physics should be used. Requires physics to be turned on.'
		type: #Boolean>
	^ AngryBirdsEnabled ifNil: [ false ]