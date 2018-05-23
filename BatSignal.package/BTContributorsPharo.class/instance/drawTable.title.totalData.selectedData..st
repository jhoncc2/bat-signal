gt-inspector-extension
drawTable: composite title: title totalData: alls selectedData: ms
	composite fastTable 
		title: [ title , ' (' , ms size asString , '/' , alls size asString ,')'];
		display: [ ms ];
		when: [ ms notEmpty ];
		column: 'Item' 
			evaluated: [ :m | m key ]
			width: 200;
		column: 'Expertise'
			evaluated: [ :m | (m value keys select: #isReachable) asArray first ]
			width: 200;
		column: 'Discrod'
			evaluated: [ :m | 
				(m value keys select: #isReachable) asArray first discordContact.
			]
			width: 200;
		yourself