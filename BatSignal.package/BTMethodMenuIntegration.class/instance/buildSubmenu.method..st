building
buildSubmenu: aBuilder method: method
	|lastItem|
	(lastItem := aBuilder item: #'Expertise help')
		order: self menuOrder;
		action: [ BTHelpDialog new
			extent: 400@500;
			method: method;
			btOpen ];
		iconName: self iconName;
		label: self menuLabel;
		withSeparatorAfter.