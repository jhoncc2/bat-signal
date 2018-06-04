menus
menuForClass: aBuilder
	<contextMenu>
	<nautilusGlobalClassMenu>
	^ self new
		menuFor: aBuilder target: #class
		yourself