usage-expertise
findCorrectImplementor: clazz method: meth
	clazz
		classAndMethodFor: #assert:
		do: [ :c :m | ^ m name. ]
		ifAbsent: [ false ].