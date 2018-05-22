usage-expertise
usageExpertiesForMethod: aMethod
	| m list cls |
	list := OrderedCollection new.
	m := Smalltalk compiler evaluate: aMethod.
	cls := m methodClass name , '>>#'.
	"self ussage methods"
	
	m selfMessages do: [ :e | 
		list add: (self findCorrectImplementor: m methodClass method: e).
	].
	m messages do: [ :e |
		(list indexOf: e) > 0 ifFalse: [
			|im | 
			e implementors ifNotEmpty: [ :i | 
				im := i first .
				list add: im parentName , '>>#' , im name
			]
		].
	].
	^ list