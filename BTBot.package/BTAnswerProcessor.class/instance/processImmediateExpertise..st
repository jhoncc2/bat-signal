processing
processImmediateExpertise: queryDescriptor
	| res |
	
	res := (self fetchExpertiseFor: queryDescriptor) 
				select: [:e | queryDescriptor category = e key ].
				
	res ifEmpty: [ ^ self handleFallback: queryDescriptor].
	
	^ 'I found this information ', (Character cr join: (res collect: [:e | e value key , 
															queryDescriptor codeElement , 
															String cr , 
															e value value])).