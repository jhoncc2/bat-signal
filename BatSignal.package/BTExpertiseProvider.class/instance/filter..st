public-api
filter: expertsSet
	"information under manual review of experts from automatically expertise binding Discord-Pharo"
	^ (expertsSet select: [ :e | e expertName size > 4 ]) 
			reject: [ :e | (e expertName = 'nickm') 
				or: [ (e expertName = 'henry') 
					or: [ (e expertName = 'nickm') 
						or: [ (e expertName = 'nickm') 
							or: [ e expertName = 'Johan' ] ] ] ]  ]
			