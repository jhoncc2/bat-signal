matching-strategies
likehoodStrategyByUserName
	<return: #Boolean>
	
   | compareBlock |
	compareBlock := [:a :b | (((a alike: b) / (a size + b size)) > 0.4)].
	matchingStrategy := [ :expertise :contact | "b an array: {Name. UserName. discordId}"
		|uName name|
		uName := contact username select: [ :c | (c = Character space) not].
		name := contact name select: [ :c | (c = Character space) not].
		
		(compareBlock value: expertise commitName value: uName) 
			or: [ compareBlock value: expertise commitName value: name ]
	]