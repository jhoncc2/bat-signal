building
ifValidInformation: inf do: aBlock
	inf ifNil: [ ^self ].
	inf ifEmpty: [ ^self ].
	inf isEmpty ifTrue: [ ^ self ].
	inf = 'nil' ifTrue: [ ^ self ].
	aBlock value