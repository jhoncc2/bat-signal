gt-inspector-extension
gtInspectorDiscordExpertise: composite
	<gtInspectorPresentationOrder: 1>
	| ms |
	ms := expertiseColl select: #isElegible.
	
	^ composite fastTable 
		title: [ 'Discord (' , ms size asString , ')'];
		display: [ ms ];
		when: [ ms notEmpty ];
		column: 'Expertise' 
			evaluated: [ :m | m ]
			width: 200;
		column: 'Contact'
			evaluated: [:e | 
				|c|
				c := e contacts asArray. 
				c size > 0 ifTrue: [ c first ] ifFalse: [ nil ] 
			]
			width: 200;
		column: 'Discord Verified'
			evaluated: [:e | 
				(e contacts select: #isElegible) size > 0. 
			]
			width: 40;
		yourself