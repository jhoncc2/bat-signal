initialization
expert: anExpert
	expert == anExpert ifTrue: [ ^ self ].
	expert := anExpert.
	self updateSubmorphs 