menu
menuFor: aBuilder target: t
	|model target |
	(model := aBuilder model) ifNil: [ ^ self ].
	((target := model selectedMethod) notNil and: [ t = #method ])
		ifTrue: [ self buildSubmenu: aBuilder method: target. ^ self  ].
	((target := model selectedClass) notNil and: [ t = #class ])
		ifTrue: [ self buildSubmenu: aBuilder class: target. ^ self ].
	((target := model selectedPackage) notNil and: [ t = #package ])
		ifTrue: [ self buildSubmenu: aBuilder package: target. ^ self ].
	
	
