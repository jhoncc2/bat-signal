matching-strategies
naiveStrategyByUserName
	<return: #Boolean>
	matchingStrategy := [ :expertise :contact | "b an array: {Name. UserName. discordId}"
		expertise commitName = contact username
	]