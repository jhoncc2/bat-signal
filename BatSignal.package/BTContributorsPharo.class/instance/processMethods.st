contributors
processMethods
	"Process methods to gather experts"
	CompiledMethod allInstances do: [ :e |
		self inmediateExpertise: e.
		"self usageExpertise: e."
	]