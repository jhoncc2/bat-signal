action
sendAction
	items userTextMessageItem text: self getText.
	self items send.
	self close