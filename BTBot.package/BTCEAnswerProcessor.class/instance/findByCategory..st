query
findByCategory: cat
	| d |
	d :=  self data select: [ :e | ('*',cat asLowercase,'*') match: e key asLowercase  ].
	^ d collect: [:e | e value , String tab , '-' , String tab , e key  ].