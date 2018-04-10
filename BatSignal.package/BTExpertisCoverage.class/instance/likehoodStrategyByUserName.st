matching-strategies
likehoodStrategyByUserName
	<return: #Boolean>
	
   | compareBlock |
	compareBlock := [:a :b | (((a alike: b) / (a size + b size)) > 0.4)].
	matchingStrategy := [ :a :b | "b an array: {Name. UserName. discordId}"
		|uName name|
		uName := b second select: [ :c | (c = Character space) not].
		name := b second select: [ :c | (c = Character space) not].
		
		(compareBlock value: a value: uName) 
			or: [ compareBlock value: a value: name ]
	]