menus
menuForMethod: aBuilder
	<contextMenu>
	<nautilusGlobalMethodMenu>
	^ self new
		menuFor: aBuilder target: #method
		yourself