gt-inspector-extension
drawTable: composite title: title data: ms
	composite fastTable 
		title: [ title , ' (' , ms size asString , '/' , calculatedMethods size asString ,')'];
		display: [ ms ];
		when: [ ms notEmpty ];
		column: 'Method' 
			evaluated: [ :m | m key ]
			width: 200
			tags: { }
			sortedBy: [ :a :b | a timestamp > b timestamp ];
		column: 'Expertise'
			evaluated: [ :m | (m value keys select: #isElegible) asArray first ]
			width: 200;
		column: 'Discrod'
			evaluated: [ :m | 
				|c|
				c := (m value keys select: #isElegible) asArray first contacts.
				c size > 0 ifTrue: [
					c asArray first
				] ifFalse: [
					nil
				]
			]
			width: 200;
		yourself