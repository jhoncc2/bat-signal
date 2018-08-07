accessing
descipherCodeElement
	^ (self message includesSubstring: self prefix caseSensitive: false) 
				ifTrue: [ 
					|index|
					index := self message findString: self prefix startingAt: 1 caseSensitive: false .
				 	^ self message copyFrom: index + self prefix size to: self message size - 1.
				] ifFalse: [ ^ nil ]