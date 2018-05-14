test
isElegible 
	^ (((self commitName isEmpty 
		or: [ self commitName = 'Anonymous' ] )
		or: [ self commitName = 'TheIntegrator' ])
		or: [ self commitName = 'nil' ]) not

