menus
menuFor: aBuilder
	|model method |
	(model := aBuilder model) ifNil: [ ^ self ].
	(method := model selectedMethod) ifNil: [ ^ self ].
	
	self buildSubmenu: aBuilder method: method.