gt-inspector-extension
gtInspectorDiscordExpertise: composite
	<gtInspectorPresentationOrder: -2>
	| ms |
	ms := (contributors select: #isReachable) values.
	
	^ composite fastTable 
		title: [ 'Discord (' , ms size asString , ')'];
		display: [ ms ];
		when: [ ms notEmpty ];
		column: 'Expert' 
			evaluated: [ :m | m ]
			width: 200;
		column: 'Contact'
			evaluated: [:e | e discordContact ]
			width: 200;
		yourself