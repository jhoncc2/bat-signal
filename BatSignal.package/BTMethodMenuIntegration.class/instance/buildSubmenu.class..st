building
buildSubmenu: aBuilder class: clazz
	| lastItem |
	(lastItem := aBuilder item: #'Expertise help')
		order: self menuOrder;
		action: [ BTHelpDialog new
			extent: 400@500;
			class: clazz;
			btOpen ];
		iconName: self iconName;
		label: self menuLabel;
		withSeparatorAfter.