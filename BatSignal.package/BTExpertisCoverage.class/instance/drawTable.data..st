gt-inspector-extension
drawTable: composite data: ms
	composite fastTable 
		title: [ 'Expertise Coverage (' , (ms size / calculatedMethods size) asString ,')'];
		display: [ ms ];
		when: [ ms notEmpty ];
		column: 'Method' 
			evaluated: [ :m | m key ]
			width: 200
			tags: { }
			sortedBy: [ :a :b | a timestamp > b timestamp ];
		column: 'Expertise'
			evaluated: [ :m | (m value select: #isElegible) asArray first ]
			width: 200;
		column: 'Discrod'
			evaluated: [ :m | 
				|c|
				c := (m value select: #isElegible) asArray first contacts.
				c size > 0 ifTrue: [
					c asArray first
				] ifFalse: [
					nil
				]
			]
			width: 200;
		yourself