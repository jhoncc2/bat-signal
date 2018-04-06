menus
buildSubmenu: aBuilder method: method
	|lastItem|
	(lastItem := aBuilder item: #rtn)
		order: 111;
		action: [ self openHelpDialog: method ];
		label: '? Expertise Help';
		withSeparatorAfter.