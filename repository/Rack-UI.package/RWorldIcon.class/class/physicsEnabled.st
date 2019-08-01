preferences
physicsEnabled
	<preference: 'Activate Physics for World Icons'
		category: 'RWorldIcon'
		description: 'This activates physics on RWorldIcons. They can then be thrown.'
		type: #Boolean>
	^ PhysicsEnabled ifNil: [ false ]