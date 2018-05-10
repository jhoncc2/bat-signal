building
build
	methods := Dictionary new.
	classes := Dictionary new.
	self on: #('Pharo-40624.changes' 
		'Pharo-50771.changes'
		'Pharo-60540.changes'
		"'Pharo7.0-metacello-64bit-c8ae60a.changes'"
		) 
		in: '/home/jhon/Pharo/changes/'.

	self imageInformation.
	"self removeDuplicates."
	"self unifyNames."
	"self findLastAuthorContribs."