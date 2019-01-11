public-api
filter: expertsSet
	^ (expertsSet select: [ :e | e expertName size > 4 ]) 
			reject: [ :e | (e expertName = 'nickm') 
				or: [ (e expertName = 'henry') 
					or: [ (e expertName = 'nickm') 
						or: [ (e expertName = 'nickm') 
							or: [ e expertName = 'Johan' ] ] ] ]  ]
			