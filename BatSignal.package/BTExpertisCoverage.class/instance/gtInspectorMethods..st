gt-inspector-extension
gtInspectorMethods: composite
	<gtInspectorPresentationOrder: -1.5>
	|ms|
	ms := calculatedMethods associations 
				select: [ :e | (e value select: #isElegible) size > 0]
				thenCollect: [ :e | e ].
				
	^ self drawTable: composite data: ms