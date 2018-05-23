utils
ifEligible: author do: aBlock
	author ifEmpty: [ ^self ].
	author = 'Anonymous' ifTrue: [ ^ self ].
	author = 'TheIntegrator' ifTrue: [ ^ self ].
	author = 'nil' ifTrue: [ ^ self ].
	aBlock value