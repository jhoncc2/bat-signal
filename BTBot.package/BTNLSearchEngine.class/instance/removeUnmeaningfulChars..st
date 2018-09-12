processing
removeUnmeaningfulChars: sentence
 	| chars r |
	chars := #($. $\ $/ $, $; $& $! $? $( $) $' $" $`).
	r := (' ' split: sentence asLowercase) asOrderedCollection 
			collect: [ :w | 
				|coll|
				coll := w collect: 
					[ :e | (chars includes: e)
						ifTrue:[ $× ]
						ifFalse:[ e ]].
				$× split: coll ].
	^ (r flattened) reject: #isEmpty