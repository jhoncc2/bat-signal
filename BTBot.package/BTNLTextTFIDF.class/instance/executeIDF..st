configuration
executeIDF: arrayTerms
	| sa |
	frequency := Dictionary new.
	dictSize := arrayTerms size.
	"sanitize"
	sa := arrayTerms collect: [ :e | ' ' split: e trim ]. 
	sa := sa collect: [ :e | (self cleanSentenceWords: e) collect: #asLowercase ].
	
	"execute tf"
	sa do: [ :s | 
		s do: [ :sw |
			(frequency includesKey: sw)
				ifTrue: [ frequency at: sw put: (frequency at: sw) + 1 ]
				ifFalse: [ frequency at: sw put: 1 ]
			]
		]
	