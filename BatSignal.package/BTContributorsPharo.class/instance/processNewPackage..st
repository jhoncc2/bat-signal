extend
processNewPackage: aRPackage
	| mthds |
	contributors := Dictionary new.
	methods := Dictionary new.
	classes := Dictionary new.
	packages := Dictionary new.
	
	"process methods"
	mthds := (aRPackage classes collect: #methods) flattened.
	mthds do: [ :e | 
		self inmediateExpertise: e.
		self usageExpertise: e.
	].

	"fill methods with discord users"
	self reverseProcessing.
	self bindDiscordExpertise.
	