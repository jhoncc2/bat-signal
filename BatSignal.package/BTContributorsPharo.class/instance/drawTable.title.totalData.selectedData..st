gt-inspector-extension
drawTable: composite title: title totalData: alls selectedData: ms
	composite fastTable 
		title: [ title , ' (' , ms size asString , '/' , alls size asString ,')'];
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
				(m value keys select: #isElegible) asArray first discordContact.
			]
			width: 200;
		yourself