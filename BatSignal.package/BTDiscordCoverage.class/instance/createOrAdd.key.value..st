actions
createOrAdd: dict key: p value: val.
	(dict includesKey: p) 
		ifTrue: [
			val associations do: [ :e |
				|exps|
				exps := (dict at: p).
				(exps includesKey: e key) ifTrue: [ 
					exps at: e key put: ((exps at: e key) + e value)
				] ifFalse: [
					exps at: e key put: e value
				]
			]
		] ifFalse: [ 
			dict at: p put: val
		].
