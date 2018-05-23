gt-inspector-extension
gtInspectorPackages: composite
	<gtInspectorPresentationOrder: -4>
	|ms|
	ms := packages associations 
				select: [ :e | (e value keys select: #isReachable) size > 0]
				thenCollect: [ :e | e ].
				
	^ self drawTable: composite 
			title: 'Coverage Methods' 
			totalData: packages 
			selectedData: ms