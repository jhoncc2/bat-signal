extend
indexOfDiscordExpert: aBTExpert inExperts: expertsData
	"returns the index of the aBTExpert in the expertsData <Array>"
	expertsData doWithIndex: [ :e :i | 
		(e at: #discordId) = aBTExpert discordContact id ifTrue: [ ^ i ] ]