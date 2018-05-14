building
buildSubmenu: aBuilder class: clazz
	| lastItem |
	(lastItem := aBuilder item: #rtn)
		order: 111;
		action: [ BTHelpDialog new
			extent: 400@500;
			class: clazz;
			openInWindow ];
		label: #'? Expertise Help';
		withSeparatorAfter.