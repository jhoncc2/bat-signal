menus
menuForPackage: aBuilder
	<contextMenu>
	<nautilusGlobalPackageMenu>
	^ self new
		menuFor: aBuilder target: #package
		yourself