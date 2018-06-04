accessing
classifyExpertOnMethods: mSet classes: cSet packages: pSet
	|rcSet rpSet|
	experts := OrderedCollection new.
	rcSet := cSet difference: (mSet intersection: cSet).
	rpSet := pSet difference: ((mSet , rcSet) intersection: pSet).
	{(#Method -> mSet). (#Class -> rcSet). (#Package -> rpSet)} do: [ :el |
		el value do: [ :e |
			experts add: e -> el key. 
		]
	].