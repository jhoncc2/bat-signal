accessing
getQueryDescriptor
	| query |
	query := BTQueryDescriptor new.
	query codeElement: self descipherCodeElement.
	^ query.