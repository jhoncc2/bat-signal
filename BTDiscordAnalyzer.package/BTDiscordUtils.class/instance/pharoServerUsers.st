as yet unclassified
pharoServerUsers
	 ^ (DSClient newDefault servers named: 'Pharo') members collect: #user