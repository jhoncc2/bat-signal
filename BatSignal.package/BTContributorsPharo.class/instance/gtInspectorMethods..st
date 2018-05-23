gt-inspector-extension
gtInspectorMethods: composite
	<gtInspectorPresentationOrder: -2>
	|ms|
	ms := methods associations 
				select: [ :e | (e value keys select: #isReachable) size > 0]
				thenCollect: [ :e | e ].
				
	^ self drawTable: composite 
			title: 'Coverage Methods' 
			totalData: methods 
			selectedData: ms