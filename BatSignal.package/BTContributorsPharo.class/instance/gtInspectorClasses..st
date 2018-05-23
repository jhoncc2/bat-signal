gt-inspector-extension
gtInspectorClasses: composite
	<gtInspectorPresentationOrder: -3>
	|ms|
	ms := classes associations 
				select: [ :e | (e value keys select: #isReachable) size > 0]
				thenCollect: [ :e | e ].
				
	^ self drawTable: composite 
			title: 'Coverage Classes' 
			totalData: classes 
			selectedData: ms