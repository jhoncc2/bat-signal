processing
handleFallback: queryDescriptor
	| pcode expertiseProv queries calls anws res |
	pcode := self defineCodeNameType: queryDescriptor codeElement.
	
	queries := {#method -> { "#exp_method->#yourself." #exp_class->{#methodClass}. #exp_package->{#methodClass. #package} }.
					#class -> { "#exp_class->#yourself." #exp_package->{#package} }
					"#package -> { #exp_package->#yourself. }"} asDictionary.
	
	calls := self immediateExpertiseMethods asDictionary.
	anws  := BTBotLanguageData answers asDictionary.
	expertiseProv := BTExpertiseProvider instance.
	res := (queries at: pcode key) collect: [ :e |
		| t r obj |
		obj := {pcode value},e value reduce: [:a :b | a perform: b].
		t := (anws at: e key) , obj name.
		r := (calls at: e key) value: expertiseProv value: obj name.
		t ->  r
	] thenReject: [:e | e value isEmpty].

	res ifEmpty: [ 
		BTEmptyException new messageText: 'No experts found for ' 
				, queryDescriptor codeElement; signal.
		"^ (self handleAnswer: #exp_empty) , queryDescriptor codeElement"
	].

	^ 'I have found this other information ' -> (res collect: #value)
	
	