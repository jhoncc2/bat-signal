building
buildSubmenu: aBuilder method: method
	|lastItem|
	(lastItem := aBuilder item: #rtn)
		order: 111;
		action: [ BTHelpDialog new
			extent: 400@500;
			method: method;
			btOpen ];
		label: #'? Expertise Help';
		withSeparatorAfter.