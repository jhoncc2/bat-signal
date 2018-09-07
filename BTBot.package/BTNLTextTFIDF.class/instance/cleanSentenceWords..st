accessing
cleanSentenceWords: questionWords
	| chars r |
	chars := #($. $\ $/ $, $; $& $! $? $( $) $' $" $`).
	r := questionWords asOrderedCollection 
			collect: [ :w | 
				|coll|
				coll := w collect: 
					[ :e | (chars includes: e)
						ifTrue:[ $× ]
						ifFalse:[ e ]].
				$× split: coll ].
	^ (r flattened) reject: #isEmpty
			
	
