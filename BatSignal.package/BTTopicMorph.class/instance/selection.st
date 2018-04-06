callback
selection
	compiledMethods ifNotNil: [ 
		^ compiledMethods first
	].
	^ nil