gt-inspector-extension
gtInspectorDiscordWithOutExpertise: composite
	<gtInspectorPresentationOrder: -1>
	| ms |
	ms := discordExpertise select: [:e | e expertises size = 0 ].
	
	^ composite fastTable 
		title: [ 'Discord Unbinded (' , ms size asString , ')'];
		display: [ ms ];
		when: [ ms notEmpty ];
		column: 'Contact'
			evaluated: [ :m | m ]
			width: 200;
		column: 'Discord Verified'
			evaluated: [ :m | m isElegible ]
			width: 80;
		yourself