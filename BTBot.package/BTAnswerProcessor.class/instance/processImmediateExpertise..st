processing
processImmediateExpertise: queryDescriptor
	| res |
	
	res := (self fetchExpertiseFor: queryDescriptor).
	queryDescriptor category = #exp_all 
		ifFalse: [
			res := res select: [:e | queryDescriptor category = e key ]. 
		].
					
	res ifEmpty: [ ^ self handleFallback: queryDescriptor].

	^ 'I have found the next information ' -> (res collect: #value).
	"^ 'I have found the next information ', 
			String cr , 
			(Character cr join: (res collect: [:e | e value key , 
															queryDescriptor codeElement , 
															String cr , 
															e value value]))."