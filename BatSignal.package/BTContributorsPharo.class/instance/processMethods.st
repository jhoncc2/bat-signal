as yet unclassified
processMethods
	CompiledMethod allInstances do: [ :e |
		self inmediateExpertise: e.
		self usageExpertise: e.
	]