actions
calculateCoverageOnMethods
	calculatedClasses := Dictionary new.
	calculatedMethods associations do: [:e |
		|clz|
		clz := ('>>' split: e key) first.
		self createOrAdd: calculatedClasses key: clz value: e value.
	].
	"calculatedMethods associationsDo: [ :c |
		self getCoverageForElement: c.
	]"