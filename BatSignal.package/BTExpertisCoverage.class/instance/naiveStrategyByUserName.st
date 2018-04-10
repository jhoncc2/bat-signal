matching-strategies
naiveStrategyByUserName
	<return: #Boolean>
	matchingStrategy := [ :a :b | "b an array: {Name. UserName. discordId}"
		a = b second
	]