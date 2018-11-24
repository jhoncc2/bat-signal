menu
menuFor: aBuilder
	|model target |
	(model := aBuilder model) ifNil: [ ^ self ].
	(target := model selectedMethod) ifNotNil: [ self buildSubmenu: aBuilder method: target. ^ self  ].
	(target := model selectedClass) ifNotNil: [ self buildSubmenu: aBuilder class: target. ^ self ].
	(target := model selectedPackage) ifNotNil: [ self buildSubmenu: aBuilder package: target. ^ self ].
	
	
