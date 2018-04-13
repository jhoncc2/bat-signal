gt-inspector-extension
gtInspectorDiscordCoverage: composite
	<gtInspectorPresentationOrder: -1>
	|ms|
	ms := calculatedMethods associations 
				select: [ :e | (e value select: [:el | el contacts isEmptyOrNil not ]) size > 0]
				thenCollect: [ :e | e ].

	^ self drawTable: composite title: 'Discord Coverage' data: ms.