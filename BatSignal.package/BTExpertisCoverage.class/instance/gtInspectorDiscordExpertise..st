gt-inspector-extension
gtInspectorDiscordExpertise: composite
	<gtInspectorPresentationOrder: 1>
	| ms |
	ms := expertiseColl select: #hasContacts.
	^ composite fastTable 
		title: [ 'Discord '];
		display: [ ms ];
		when: [ ms notEmpty ];
		column: 'Expertise' 
			evaluated: [ :m | m ]
			width: 200;
		column: 'Discord'
			evaluated: [ :m | m contacts asArray first ]
			width: 200;
		yourself