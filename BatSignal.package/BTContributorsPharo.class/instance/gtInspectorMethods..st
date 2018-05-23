gt-inspector-extension
gtInspectorMethods: composite
<gtInspectorPresentationOrder: -2>
	|ms|
	ms := methods associations 
				select: [ :e | (e value keys select: #isElegible) size > 0]
				thenCollect: [ :e | e ].
				
	^ self drawTable: composite 
			title: 'Expertise Coverage' 
			totalData: methods 
			selectedData: ms