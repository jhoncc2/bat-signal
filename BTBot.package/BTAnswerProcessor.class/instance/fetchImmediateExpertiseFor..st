processing
fetchImmediateExpertiseFor: queryDescriptor
	| expertiseProv block res |
	expertiseProv := BTExpertiseProvider instance.
	block := self immediateExpertiseMethods.
	
	res := block 
				collect: [ :e | |a|
					a := (self handleAnswer: queryDescriptor category)
								-> (self formatExpertiseList: 
										(e value value: expertiseProv 
													value: queryDescriptor codeElement)).
					e key -> a. ]
				thenReject: [:e | e value value isEmpty].
	
	^ res.