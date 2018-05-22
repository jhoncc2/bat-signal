usage-expertise
calculateUsageExpertise
	calculatedMethods associations do: [ :e | 
		|el|
		el := self usageExpertiesForMethod: e key.
		el do: [ :cm | | cs |
			(calculatedMethods includesKey: cm) 
				ifTrue: [ cs := calculatedMethods at: cm. "missing methods" ]
				ifFalse: [ cs := calculatedMethods at: cm put: Dictionary new. "missing methods" ].
			
			(cs includesKey: e value) ifTrue: [
				cs at: e value put: (cs at: e value) + self usageVal.
			] ifFalse: [
				cs at: e value put: self usageVal
			]
		]
	].
	
	