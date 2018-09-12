processing
fetchExpertiseFor: queryDescriptor
	| expertiseProv block res |
	expertiseProv := BTExpertiseProvider instance.
	block := {
		#exp_method ->  [expertiseProv expertsForMethodName: queryDescriptor codeElement].
		#exp_class ->  [expertiseProv expertsForClassName: queryDescriptor codeElement].
		#exp_package ->  [expertiseProv expertsForPackageName: queryDescriptor codeElement].
		"#fallback_exp ->  [expertiseProv expertsForPackageName: queryDescriptor codeElement]."
	}.
	
	res := block 
				collect: [ :e | |a|
					a := ((self handleAnswer: queryDescriptor category) , queryDescriptor codeElement)  ->
								 				(self formatExpertiseList:  (e value value)).
					e key -> a. ]
				thenReject: [:e | e value value isEmpty].
	^ res.